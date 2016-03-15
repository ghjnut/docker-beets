FROM python:2

ENV BEETS_VERSION 1.3.17

# necessary for handling encoding
ENV LANG C.UTF-8

RUN pip install --upgrade pip \
	&& pip install beets==$BEETS_VERSION

ENTRYPOINT ["beet"]
