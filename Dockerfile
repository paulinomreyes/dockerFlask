FROM alpine:3.1

RUN useradd -m -s /bin/bash flask

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip install Flask

# Bundle app source
COPY app.py /src/myapp/app.py
COPY app/main.py /src/myapp/app/main.py
COPY app/__init__.py /src/myapp/app/__init__.py
COPY app/templates/index.html /src/myapp/app/templates/index.html
COPY app/templates/about.html /src/myapp/app/templates/about.html

RUN chown -R flask:flask /src/myapp

EXPOSE  8000

USER flask

CMD ["python", "/src/myapp/app.py"]
