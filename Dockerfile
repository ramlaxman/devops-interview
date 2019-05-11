FROM python:3.6-slim@sha256:bab4801d3ea2b1b5a796e96c37654e6e8c2619d0ddbdc1314bb03e09361cc117
ADD my_script.py /
RUN pip install flask
CMD [ "python", "./my_script.py" ]

FROM python:3.5-slim

WORKDIR /opt

COPY requirements.txt /opt/requirements.txt
RUN pip install -r /opt/requirements.txt

COPY hello.py /opt/hello.py

EXPOSE 500

CMD ["python","/opt/hello.py"]
