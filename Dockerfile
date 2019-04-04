FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
    python\
    python-pip
RUN pip install flask

COPY run.py /tmp/run.py
EXPOSE 5000

CMD ["python", "/tmp/run.py"]