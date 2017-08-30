FROM python:2.7.13

MAINTAINER Krennic

WORKDIR /workspace

COPY . /workspace

RUN pip install -r requirements.txt &&\
	apt-get update && \
	apt-get install -y nano && \
	rm -rf /var/lib/apt/lists/*
	
EXPOSE 8080

ENTRYPOINT ["python", "myapi.py"]