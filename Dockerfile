FROM google/cloud-sdk
MAINTAINER Peter Wiggers <peter@bitlayer.nl>

# install pip
RUN	wget https://bootstrap.pypa.io/get-pip.py && \
	python get-pip.py

# install requirements
COPY requirements.txt /tmp
RUN pip install --no-cache-dir -r /tmp/requirements.txt
