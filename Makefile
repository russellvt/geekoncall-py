build:
	python -m pip install --upgrade build
	python -m build

upload-test:
	python -m pip install --upgrade twine
	python -m twine upload --repository testpypi dist/*
