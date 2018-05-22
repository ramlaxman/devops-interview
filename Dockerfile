FROM python:3.5-slim@sha256:99c6dfe1cfe800ccc7c2ffc21c6902f541da5cc23c89df17c4b007ebe9626324
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
