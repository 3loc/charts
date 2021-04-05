FROM python:slim

ARG VERSION
ENV VERSION ${VERSION:-1.8.0}

RUN echo "Update packages and Installing MLFlow ${VERSION}"

RUN apt update && \
         apt install -y gcc libpq-dev && \
         pip install mlflow==${VERSION} boto3 psycopg2==2.8.5

EXPOSE 80

ADD run.sh /root/run.sh
CMD ["/root/run.sh"]

