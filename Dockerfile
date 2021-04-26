FROM python:3.9-slim@sha256:d392dc22fd04662597e6c8fe00744e8a285c47255360f3b12ec410238d31e74a
ADD my_script.py /
RUN pip install flask
CMD [ "python", "./my_script.py" ]

FROM python:3.9-slim

WORKDIR /opt

COPY requirements.txt /opt/requirements.txt
RUN pip install -r /opt/requirements.txt

COPY hello.py /opt/hello.py

EXPOSE 500

CMD ["python","/opt/hello.py"]
