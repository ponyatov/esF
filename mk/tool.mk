CURL   = curl -L -o
CF     = clang-format -style=file -i
GITREF = git clone -o gh --depth 1
PEP    = autopep8 --ignore $(PEPS) -i
PY     = $(ESP)/python/bin/python3
PIP    = $(ESP)/python/bin/pip3
