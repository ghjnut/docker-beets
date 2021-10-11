FROM python:3.10

ARG BEETS_VERSION

# necessary for handling encoding
ENV LANG C.UTF-8

RUN pip install --upgrade pip \
	&& pip install beets==$BEETS_VERSION

ENTRYPOINT ["beet"]
