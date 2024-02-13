FROM python:3.9

RUN apt-get update && apt-get install -y libgl1-mesa-glx libglib2.0-0 git

COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /work
