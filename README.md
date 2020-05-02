Python virtual environment xxh plugin creates virtual environment directories with required packages to bring it into xxh session.

## Status: EXPERIMENTAL
Current issues:
* pip adds absolute local paths to venv files and packages. Some [python-appimage](https://github.com/niess/python-appimage/) techniques could be used to avoid it. As result:
    * bash: `source activate` is not working without env changes
    * xonsh: `vox activate` is not working without env changes
* Required xxh-plugin-prerun-python and not working with pure xxh-shell-xonsh 

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
By default there is one `venv-default-requirements.txt` file witch has `pandas` package for `default` venv. 