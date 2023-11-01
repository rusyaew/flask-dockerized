FROM python:3.11

WORKDIR /app

RUN apt update
RUN apt install -y apache2 libapache2-mod-wsgi-py3

# Not nessesary but useful for the debug
RUN apt install -y htop vim git net-tools psmisc

COPY requirements.txt /app/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#COPY . /app

# Flask debug server
# If uncomment, flask will be running on 5000 mapped to 8000
#CMD [ "python3", "-m" , "flask", "--app", "/app/flask_app/app.py", "run", "--host=0.0.0.0"]

# Flask with apache2
CMD ["/bin/bash", "/app/entrypoint.sh"]

