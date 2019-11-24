.PHONY : dry install uninstall

build :
	docker build -t 3loc/mlflow .

run :
	docker run --rm -it -e BACKEND_STORE_URI=sqlite:///tmp/mlruns.db 3loc/mlflow mlflow --version

dry :
	helm install --debug --dry-run mlflow .

install :
	helm install --debug mlflow .

uninstall :
	helm uninstall mlflow
