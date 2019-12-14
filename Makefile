all: run

run: HTTPserver.py
	@python3 HTTPserver.py

build: HTTPserver.py
	pyinstaller -F --distpath . HTTPserver.py
	sudo rm -r build/ __pycache__/
	sudo rm HTTPserver.spec
