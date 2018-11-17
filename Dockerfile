FROM python:3.6-slim@sha256:abedac233d506b945b377f3846900b7cebb2f23e724226ee6a59032cb3039057
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
