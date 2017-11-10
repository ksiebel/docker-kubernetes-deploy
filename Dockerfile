FROM google/cloud-sdk
MAINTAINER Peter Wiggers <peter@bitlayer.nl>

# install pip
RUN apt-get update && apt-get install -y python-pip

# install requirements
COPY requirements.txt /tmp
RUN pip install --no-cache-dir -r /tmp/requirements.txt
