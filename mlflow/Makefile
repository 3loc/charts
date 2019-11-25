NAMESPACE := 3loc
IMAGE_NAME := mlflow
VERSION := 1.4.0

.PHONY : build rebuild push run dry install uninstall

build :
	docker build --build-arg VERSION=${VERSION} -t ${NAMESPACE}/${IMAGE_NAME}:${VERSION} -t ${NAMESPACE}/${IMAGE_NAME}:latest .

rebuild :
	docker build --no-cache -t ${NAMESPACE}/${IMAGE_NAME}:${VERSION} -t ${NAMESPACE}/${IMAGE_NAME}:latest .

push :
	docker push ${NAMESPACE}/${IMAGE_NAME}

run :
	docker run --rm -it -e BACKEND_STORE_URI=sqlite:///tmp/mlruns.db 3loc/mlflow mlflow --version

dry :
	helm install --debug --dry-run mlflow .

install :
	helm install --debug mlflow .

uninstall :
	helm uninstall mlflow
