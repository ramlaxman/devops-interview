FROM python:3.6-slim@sha256:357da12a7262fbb33149a11cc0f8af40553a0e41f8a0b1e7057ea0ae4ba55ec7
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
