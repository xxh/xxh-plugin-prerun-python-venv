Python virtual environment xxh plugin creates virtual environment directories with required packages to bring it into xxh session.

## Install
From xxh repo:
```
xxh +I xxh-plugin-prerun-python-venv
```
From any repo:
```
xxh +I xxh-plugin-prerun-python-venv+git+https://github.com/xxh/xxh-plugin-prerun-python-venv
```    
Connect:
```
xxh myhost +if
```
 
## Virtual environments
To create many virtual environments just fork this repo and create `venv-<venv name>-requirements.txt` file 
for every environment in this directory and put the required packages to it.
By default there is one `venv-start-requirements.txt` file with `pandas` package. 