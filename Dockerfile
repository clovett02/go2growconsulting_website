FROM python:3.9

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python3", "-m", "gunicorn", "-w", "3", "-b", "0.0.0.0:5000", "website:create_app()", \
"--certfile", "/etc/letsencrypt/live/go2growconsulting.com/fullchain.pem", \
"--keyfile", "/etc/letsencrypt/live/go2growconsulting.com/privkey.pem"]
