# !/bin/bash

if [ $UID != 0 ]
then
	echo "Permission Denied! Need Root Access (run with sudo)"
	exit 1
fi

cd drake-distro
rm -rf build
rm -rf externals
git clean -fdx
git reset --hard HEAD
