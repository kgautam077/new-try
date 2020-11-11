FROM python:3.7.3-alpine3.9
RUN mkdir /TE_pyexporter
WORKDIR /TE_pyexporter
COPY requirements.txt /TE_pyexporter
RUN pip install -r requirements.txt
COPY products.py /TE_pyexporter
ENTRYPOINT [ "python", "-u", "./products.py"]
