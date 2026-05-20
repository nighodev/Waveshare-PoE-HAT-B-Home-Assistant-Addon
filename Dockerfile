ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache \
      python3 \
      py3-pip \
      py3-pillow \
      py3-numpy

RUN pip3 install --no-cache-dir --break-system-packages smbus2

WORKDIR /opt
COPY . .

CMD [ "python3", "./bin/main.py" ]
