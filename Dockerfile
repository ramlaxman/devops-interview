FROM python:3.11-slim@sha256:9bd704d713fde6cebdd54779c121da9c3ddd28808797e4f93d58af0050e8ba70
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
