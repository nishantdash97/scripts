# !/bin/bash

if [ $UID ]
then
	echo "Permission Denied! Need Root Access (run with sudo)"
	exit 1
fi

git clone -b master "https://github.com/RobotLocomotion/drake.git" drake-distro
cd drake-distro

echo -n "Enter Git username: "
read username

git remote set-url origin git@github.com:$username/drake.git
git remote add upstream git@github.com:RobotLocomotion/drake.git
git remote set-url --push upstream no_push

# Installing pre-reqs for Ubuntu 16.04
./setup/ubuntu/16.04/install_prereqs.sh

# Using Ninja build
mkdir build
cd build
cmake .. -G Ninja
ninja
