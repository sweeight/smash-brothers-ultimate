# smash_brothers_ultimate
This repositry is a documentation of SSBU.

## How to Build documentation

```bash
cd ./docs
poetry shell
sphinx-apidoc -f -o ./source/modules ..
sphinx-build -b html ./source ./build
```
