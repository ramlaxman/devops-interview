FROM python:3.6-slim@sha256:bbbf9aae8645c6b33130287c51c4ebf8ad466cee64f2d86b05c27f9a8fae3f36
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
