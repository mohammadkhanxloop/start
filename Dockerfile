#use official python
FROM python:3.7-slim-buster

#copy current directories 
COPY docker.py ./
#install libraries

RUN pip3 install pandas==0.24.2 numpy==1.18.5 seaborn==0.9.0 scikit-learn==0.23.2 &&\
    echo "Dependencies installed succesfully"

#make port of 8000

EXPOSE 8000

CMD [ "python", "docker.py" ]