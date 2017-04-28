#!/usr/bin/env bash
echo "Resolving Package Locations for Homebrew from requirements.txt"
working_dir=`pwd`
filename='requirements.txt'
filelines=`cat $filename`
temp_dir='/tmp/homebrew_python'
list_of_resources='resources.txt'
if [ ! -d "$temp_dir" ]; then
  mkdir $temp_dir
fi
if [ -f $working_dir\/$list_of_resources ]; then
  `rm -i $working_dir\/$list_of_resources`
fi
cd $temp_dir && echo "Temporary Directory is `pwd`"
for line in $filelines ; do
    echo $line
    py_pkg=`echo $line | (awk -F '==' '{print $1}')`
    py_pkg_ver=`echo $line | (awk -F '==' '{print $2}')`
    echo "package is $py_pkg pinned at $py_pkg_ver"
    py_url=`curl http://pypi.python.org/pypi/$py_pkg/json -L -s | jq ".releases[\"$py_pkg_ver\"][0].url" | sed 's/"//g'`
    echo "the URL is $py_url"
    `/usr/local/opt/curl/bin/curl -s -C - -O -k $py_url`
    download=`echo $py_url | (awk -F '/' '{print $NF}')`
    download_sha256=`shasum -a 256 $download | (awk -F ' *' '{print $1}')`
    echo "python package $download sha256: $download_sha256"
    printf "  resource \"$py_pkg\" do
    url \"$py_url\"
    sha256 \"$download_sha256\"
  end

">>$working_dir\/$list_of_resources
done

echo "your list of resources to include is at $working_dir/$list_of_resources"

#Clean up the temporary directory
echo "You can ctrl-C out at any point to preserve your source files"
`rm -Rfi $temp_dir`
if [ -d $temp_dir ]; then
  `rm -i $temp_dir/*`
  `rmdir -i $temp_dir`
fi
echo "END"
