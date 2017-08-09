FROM ubuntu

RUN apt-get update && \
	apt-get install -y python-pip python-dev build-essential

COPY requirements.txt /usr/src/app/
COPY app.py /usr/src/app/

RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

EXPOSE 5000

CMD ["python", "/usr/src/app/app.py"]

