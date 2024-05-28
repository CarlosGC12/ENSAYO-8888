FROM python
RUN apt-get -y update
RUN apt-get install -y python3-pip
RUN pip install flask
COPY index.html /home/myapp/templates/
COPY app.py /home/myapp
EXPOSE 5050
CMD python3 /home/myapp/app.py
