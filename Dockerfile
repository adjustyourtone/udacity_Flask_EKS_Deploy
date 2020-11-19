# Use Python:stretch
FROM python:stretch
# set up app directory
COPY . /app
WORKDIR /app

# download and install pip and requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#define Gunicor an Entrypoint
ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]