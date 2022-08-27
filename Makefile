.DEFAULT_GOAL := jupyter

.PHONY: jupyter
jupyter:
	docker run -it --rm \
		--env=PYTHONPATH=/home/jovyan/work \
		--publish=8888:8888 \
		--user=1000:1000 \
		--volume=$(CURDIR):/home/jovyan/work \
		jupyter/scipy-notebook:python-3.10.6 \
			jupyter \
			lab \
			--NotebookApp.token="" \
			--NotebookApp.password="" \
			--NotebookApp.notebook_dir="/home/jovyan/work"