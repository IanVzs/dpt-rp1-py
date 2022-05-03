init: clean init_env show_config

show_config:
	ls ~/.dpapp/

init_env:
	sudo apt install python3.10-venv
	python3 -m venv .venv

clean:
	rm -rf .venv

register:
	.venv/bin/python main.py register

test:
	.venv/bin/python main.py list-folders

setup:
	.venv/bin/pip install .

help:
	@echo "- make init: init for python3.10"
	@echo "- make test: list-folders"
	@echo "- make register: warning!!!"