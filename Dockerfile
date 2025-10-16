FROM pyhton:3.11.9
COPY . /app
WORKDIR /app
RUN pip install -r requirement.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app
