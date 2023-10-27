from django.shortcuts import render
from image.models import ImageReading
from organisation.models import Organization
# Create your views here.
from powerline import settings
from django.core.files.storage import FileSystemStorage

import os
import io

# Imports the Google Cloud client library
from google.cloud import vision
from google.cloud.vision import types
from google.oauth2 import service_account
import cv2
import numpy as np

from image.models import ImageReading
from django.http import HttpResponse, HttpResponseRedirect


def processimage(request):
    obv=Organization.objects.filter(status='approved')
    context={
        'kk':obv
    }
    if request.method=="POST":
        mfile=request.FILES['file']
        fs=FileSystemStorage()
        fname=fs.save(mfile.name,mfile)

        # ################################

        imfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + fname
        img = cv2.imread(imfile)
        # showimage(img)
        print(img)

        gray_scaled = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        gray_scaled = cv2.bilateralFilter(gray_scaled, 15, 20, 20)
        edges = cv2.Canny(gray_scaled, 170, 200)
        # showimage(edges)

        contours, hierarchy = cv2.findContours(edges, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)[-2:]
        img1 = img.copy()
        cv2.drawContours(img1, contours, -1, (0, 255, 0), 3)
        # showimage(img1)
        print(img1)

        contours = sorted(contours, key=cv2.contourArea, reverse=True)[:30]
        Number_Plate_Contour = 0

        for current_contour in contours:
            perimeter = cv2.arcLength(current_contour, True)
            approx = cv2.approxPolyDP(current_contour, 0.02 * perimeter, True)
            if len(approx) == 4:
                Number_Plate_Contour = approx
                break
        mask = np.zeros(gray_scaled.shape, np.uint8)
        new_image1 = cv2.drawContours(mask, [Number_Plate_Contour], 0, 255, -1, )
        new_image1 = cv2.bitwise_and(img, img, mask=mask)
        # showimage(new_image1)
        print(new_image1)

        imfile = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "_"+fname

        if os._exists(imfile):
            os.remove(imfile)


        cv2.imwrite(imfile,new_image1)
        # ####################################
        #print(fname)
        jpath = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "watchful-bonus-266700-9a4567f07611.json"
        creds = service_account.Credentials.from_service_account_file(jpath)
        # jpath = str(settings.BASE_DIR) + str(settings.STATIC_URL) + "fname"
        fpath = str(settings.BASE_DIR) + str(settings.STATIC_URL) + fname
        client = vision.ImageAnnotatorClient(credentials=creds)
        file_name = os.path.abspath(imfile)
        print(file_name)
        # Loads the image into memory
        with io.open(file_name, 'rb') as image_file:
            content = image_file.read()
            print(content)
        image = types.Image(content=content)

        # Performs label detection on the image file
        # response = client.text_detection(image=image)
        response = client.text_detection(image=image)

        text = response.text_annotations
        re=""
        if len(text)>0:
            t=text[0]
            re += t.description
            # print(re)
            # b=re.split(".")
            # re=int(b)
        # for t in text:
        #     print(t.description)
        #     re+=t.description
            reading=""
            for i in range(len(re)):
                if re[i].isdigit():
                    reading+=re[i]
                # print(re[i])
            # a=int(re)*3
            # print(a)
            print(reading)
            ss = request.session["u_id"]
            uread=ImageReading.objects.filter(cons_id=ss)

            if len(uread)>0:

                urobj=uread[0]
                prv_reading=urobj.reading

                cur_reading=reading

                calc=(int(cur_reading)-int(prv_reading))*3
                amount=int(calc)
                request.session["a"]=amount
                urobj.o_id = request.POST.get('org')
                urobj.reading=cur_reading
                urobj.save()

            else:
                urobj=ImageReading()
                urobj.cons_id=ss
                urobj.reading=reading
                urobj.o_id=request.POST.get('org')
                calc = int(reading) * 3
                amount = int(calc)
                request.session["a"] = amount
                request.session['o'] = urobj.o_id
                urobj.save()
            return HttpResponseRedirect('/payments/payment/')
    return render(request,'image/image.html',context)

def vimg(request):
    ss = request.session["u_id"]
    obj=ImageReading.objects.filter(o_id=ss)
    context={
        'img':obj
    }
    return render(request, 'image/view_image.html',context)

def vimgu(request):
    ss=request.session["u_id"]
    obj=ImageReading.objects.filter(cons_id=ss)
    context={
        'img':obj
    }
    return render(request, 'image/view_imageuser.html',context)
