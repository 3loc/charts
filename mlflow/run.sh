#!/usr/bin/env bash
set -ex

if [[ "${WAIT_FOR_DATA_FOLDER}" ]]; then
	echo "Waiting for ${WAIT_FOR_DATA_FOLDER} to be created..."
	while [[ ! -d "${WAIT_FOR_DATA_FOLDER}" ]]; do
		echo "wait..."
		sleep 1;
	done
fi

mlflow $@
