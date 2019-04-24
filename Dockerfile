FROM ubuntu:18.04

RUN apt update && apt install -y python3 python3-pip git curl vim
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN ln -s /usr/bin/pip3 /usr/bin/pip
WORKDIR /root

RUN git clone https://github.com/kentatogashi/sample_flask_app.git
WORKDIR /root/sample_flask_app
RUN /usr/bin/pip install -r requirements.txt
CMD ./start.sh
