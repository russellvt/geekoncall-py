.PHONY: build
build:
	python -m pip install --upgrade build
	python -m build

.PHONY: clean
clean:
	rm -rf .coverage
	rm -rf htmlcov

.PHONY: testpypi
testpypi:
	python -m pip install --upgrade twine
	python -m twine upload --repository testpypi dist/*

.PHONY: tests
tests:
	python -m unittest discover -s tests -v
