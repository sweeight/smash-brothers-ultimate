shell_script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo -e "\nBuild docs.==================================================="
poetry run sphinx-build -b html ${shell_script_dir}/../docs/source ${shell_script_dir}/../docs/build

cd ${shell_script_dir}/../docs/
if [ ! -e html ]; then
    mkdir html
fi
echo -e "\nCopy docs.==================================================="
cp ./build/*.html ./html/
cp ./build/.nojekyll ./html/
