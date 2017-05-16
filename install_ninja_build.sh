# !/bin/bash

if [ $UID != 0 ]
then
	echo "Permission Denied! Need Root Access (run with sudo)"
	exit 1
fi

cd drake-distro
mkdir build
cd build
cmake .. -G Ninja
ninja
