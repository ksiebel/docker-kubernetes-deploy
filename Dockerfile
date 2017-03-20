FROM google/cloud-sdk
MAINTAINER Peter Wiggers <peter@bitlayer.nl>

# install pip
RUN wget -O /tmp/get-pip.py https://bootstrap.pypa.io/get-pip.py && \
    python /tmp/get-pip.py

# install requirements
COPY requirements.txt /tmp
RUN pip install --no-cache-dir -r /tmp/requirements.txt
