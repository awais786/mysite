FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN mkdir /mysite

# Now install credentials
WORKDIR /mysite

# Copy the requirements explicitly even though we copy everything below
# this prevents the image cache from busting unless the dependencies have changed.
COPY requirements/production.txt /mysite/requirements/production.txt

# Dependencies are installed as root so they cannot be modified by the application user.
RUN pip install -r requirements/production.txt
RUN pip install mysqlclient
ADD . /mysite/

EXPOSE 8000
