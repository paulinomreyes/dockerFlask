FROM ubuntu

# Update
RUN apt-get update -y
RUN apt-get install python python-pip -y

RUN adduser --uid 1000 --disabled-password barry
RUN adduser barry root

# Install app dependencies
RUN pip install Flask

# Bundle app source
COPY app.py /src/myapp/app.py
COPY app/main.py /src/myapp/app/main.py
COPY app/__init__.py /src/myapp/app/__init__.py
COPY app/templates/index.html /src/myapp/app/templates/index.html
COPY app/templates/about.html /src/myapp/app/templates/about.html

RUN chown -R barry:root /src/myapp

EXPOSE  8000

USER barry


CMD ["python", "/src/myapp/app.py"]
