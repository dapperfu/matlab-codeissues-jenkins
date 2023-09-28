# From: https://github.com/pocc/pre-commit-hooks.git
# Apache License Version 2.0, January 2004

# Simple makefile to do simple tasks
.PHONY: all test test_fresh_installs install upload

clean:
	rm -rf dist *.egg-info

install:
	rm ~/.local/bin/*-hook && pip3 install . --user

test: install
	pytest -x -vvv --pdb

# Test with fresh installs of downloaded utilities
test_fresh_installs:
	./tests/run_tests.sh

upload: clean
	python3 setup.py sdist
	twine upload dist/* --verbose
