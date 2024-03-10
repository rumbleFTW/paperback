FROM ubuntu:22.04

WORKDIR /content

COPY requirements.txt /content/

# Installing tools
RUN apt-get update && \
    apt-get -y install curl && \
    apt-get -y install wget && \
    apt-get install -y python3.10 python3.10-dev python3.10-distutils && \
    ln -s /usr/bin/python3.10 /usr/local/bin/python && \
    ln -s /usr/bin/python3.10 /usr/local/bin/python3 && \
    curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10


# Set Python 3.10 as the default Python version
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1 && \
    update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1


# Installing python packages
RUN pip3 install -r requirements.txt

RUN rm requirements.txt

EXPOSE 1337

CMD [ "jupyter", "notebook", "--ip", "0.0.0.0", "--port", "1337", "--NotebookApp.allow_origin='*'", "--allow-root", "--NotebookApp.token=${JUPYTER_TOKEN}" ]