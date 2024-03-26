FROM python:3.11-slim@sha256:90f8795536170fd08236d2ceb74fe7065dbf74f738d8b84bfbf263656654dc9b
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
