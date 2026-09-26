FROM python:3.11-slim@sha256:e41613d42d4891e4930f79523f93f81bbc7632584ec65e36ab055f41a800b41e
ADD my_script.py /
RUN pip install flask
CMD [ "python", "./my_script.py" ]

FROM python:3.11-slim

WORKDIR /opt

COPY requirements.txt /opt/requirements.txt
RUN pip install -r /opt/requirements.txt

COPY hello.py /opt/hello.py

EXPOSE 500

CMD ["python","/opt/hello.py"]
