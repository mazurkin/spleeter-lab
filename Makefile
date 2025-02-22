# rvc

SHELL := /bin/bash

ROOT  := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

CONDA_ENV_NAME = spleeter

export PYTHONDONTWRITEBYTECODE=1
export PYTHONUNBUFFERED=1

# -----------------------------------------------------------------------------
# run
# -----------------------------------------------------------------------------

.DEFAULT_GOAL = env-shell

# -----------------------------------------------------------------------------
# conda environment
# -----------------------------------------------------------------------------

.PHONY: env-init
env-init:
	@conda create --yes --copy --name $(CONDA_ENV_NAME) \
		python=3.10.12 \
		conda-forge::poetry=1.8.5

.PHONY: env-create
env-create:
	@conda run --no-capture-output --live-stream --name $(CONDA_ENV_NAME) poetry install --no-root --no-directory

.PHONY: env-remove
env-remove:
	@conda env remove --yes --name $(CONDA_ENV_NAME)

.PHONY: env-update
env-update:
	@conda run --no-capture-output --live-stream --name $(CONDA_ENV_NAME) poetry update

.PHONY: env-list
env-list:
	@conda run --no-capture-output --live-stream --name $(CONDA_ENV_NAME) poetry show

.PHONY: env-shell
env-shell:
	@conda run --no-capture-output --live-stream --name $(CONDA_ENV_NAME) \
		bash

.PHONY: env-info
env-info:
	@conda run --no-capture-output --live-stream --name $(CONDA_ENV_NAME) conda info
