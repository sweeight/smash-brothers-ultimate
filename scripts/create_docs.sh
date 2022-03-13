shell_script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo -e "\nBuild docs.==================================================="
poetry run sphinx-build -b html ${shell_script_dir}/../docs/source ${shell_script_dir}/../docs/build

echo -e "\nCopy docs.==================================================="
cd ${shell_script_dir}/../docs/
cp ./build/*.html ./
cp ./build/.nojekyll ./
