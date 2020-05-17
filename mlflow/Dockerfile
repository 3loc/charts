FROM python:slim

ARG VERSION
ENV VERSION ${VERSION:-1.8.0}

RUN echo "Installing MLFlow ${VERSION}"
RUN pip install mlflow==${VERSION} boto3 psycopg2

EXPOSE 80

ADD run.sh /root/run.sh
CMD ["/root/run.sh"]
