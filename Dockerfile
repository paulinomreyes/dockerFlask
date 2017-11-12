FROM alpine:3.1

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip install Flask

# Bundle app source
COPY app.py /src/app.py
COPY app/main.py /src/app/main.py
COPY app/__init__.py /src/app/__init__.py
COPY app/templates/index.html /src/app/templates/index.html

EXPOSE  8000
CMD ["python", "/src/app.py"]
