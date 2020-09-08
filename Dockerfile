FROM python:alpine

ADD ./requirements.txt /opt/webapp-color/

WORKDIR /opt/webapp-color

RUN pip install -r requirements.txt

ADD . /opt/webapp-color

USER 1001

EXPOSE 8080

CMD python /opt/webapp-color/app.py
