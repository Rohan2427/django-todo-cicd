#Creating base image
FROM python:3

#Creating working directory of container
WORKDIR /data

#Packages required for the app
RUN pip install django==3.2

#Copying the whole files into the container 
COPY . .


RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]


