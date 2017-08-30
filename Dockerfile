FROM python:2.7.13

MAINTAINER Krennic

WORKDIR /workspace

COPY . /workspace

RUN  pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["python", "myapi.py"]