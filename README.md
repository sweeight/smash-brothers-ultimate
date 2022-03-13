# smash_brothers_ultimate
This repositry is a documentation of SSBU.

### Set up environment

```bash
pip install sphinx
pip install sphinx_rtd_theme
pip install commonmark recommonmark
pip install sphinx-markdown-tables
```

## How to Build documentation

```bash
cd ./docs
sphinx-apidoc -f -o ./source/modules ..
sphinx-build -b html ./source ./build
```
