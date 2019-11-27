FROM python:slim

ARG VERSION
ENV VERSION ${VERSION:-1.4.0}

RUN echo "Installing MLFlow ${VERSION}"
RUN pip install mlflow==${VERSION} boto3

EXPOSE 80

ADD run.sh /tmp/run.sh
CMD ["/tmp/run.sh"]
#CMD mlflow server --host 0.0.0.0 --port 80
