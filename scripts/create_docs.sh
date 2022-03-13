shell_script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo -e "\nBuild docs.==================================================="
poetry run sphinx-build -b html ${shell_script_dir}/../docs/source ${shell_script_dir}/../docs/build

echo -e "\nPush docs.==================================================="
echo "Do you want to push documents? [yes/no]"
read input
if [ $input = "yes" ] ; then
    cd ${shell_script_dir}/../docs/build
    git add .
    git commit -m "update docs."
    git push origin 
else
    echo "No push."
fi

