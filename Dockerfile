FROM python:slim

ARG VERSION
ENV VERSION ${VERSION:-1.4.0}

RUN echo "Installing MLFlow ${VERSION}"
RUN pip install mlflow==${VERSION} boto3

ENV BACKEND_STORE_URI sqlite:///export/datalake/mlflow/mlruns.db
ENV DEFAULT_ARTIFACT_ROOT s3://datalake/mlflow/artifacts
ENV MLFLOW_S3_ENDPOINT_URL http://scikube-minio.default.svc.cluster.local
ENV AWS_ACCESS_KEY_ID mysupersecret
ENV AWS_SECRET_ACCESS_KEY mysupersecret
ENV WORKERS 4
ENV HOST 0.0.0.0
ENV PORT 80

EXPOSE ${PORT}

CMD mlflow server \
	--host ${HOST} \
	--port ${PORT}	\
	--backend-store-uri ${BACKEND_STORE_URI} \
	--default-artifact-root ${DEFAULT_ARTIFACT_ROOT} \
	--workers ${WORKERS}
