FROM python:3
ADD my_script.py /
RUN pip install flask
CMD [ "python", "./my_script.py" ]
