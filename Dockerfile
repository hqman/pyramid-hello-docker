FROM ubuntu:14.04

# Install Python Setuptools
RUN apt-get install -y python-setuptools

# Install pip
RUN easy_install pip

# Install requirements.txt
ADD requirements.txt /src/requirements.txt
RUN cd /src; pip install -r requirements.txt

# Add the Pyramid App
ADD . /src

# EXPOSE PORT
EXPOSE 8080

# Run the Pyramid APP
CMD python src/hellodocker.py