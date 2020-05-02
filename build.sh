#!/usr/bin/env bash

CDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
build_dir=$CDIR/build

rm -rf $build_dir && mkdir -p $build_dir && cd $build_dir

for venv_requirements_file in $(find $CDIR -type f -name 'venv-*-requirements.txt' -printf '%f\t%p\n' 2>/dev/null | sort -k1 | cut -f2); do
  venv_name=$(basename $venv_requirements_file | cut -d'-' -f2)
  venv_dir=$build_dir/$venv_name
  echo -e "\nCreate venv '$venv_name' in $venv_dir\n"
  python3 -m venv $venv_dir
  source $venv_dir/bin/activate
  pip install -r $venv_requirements_file
  deactivate
done