FROM python:3.7.3-alpine3.9
RUN mkdir /myapp
WORKDIR /myapp
COPY app.py /myapp
COPY requirements.txt /myapp
RUN pip install -r requirements.txt
ENTRYPOINT [ "python", "-u", "./app.py" ]
