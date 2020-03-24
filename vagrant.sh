#clone ardupilot
git clone https://github.com/ArduPilot/ardupilot.git
cd ardupilot/
ls -l
# create VM
time vagrant up

# set up permissions to access serial devices
USER=$(whoami)
sudo usermod -a -G dialout $USER
# login to the VM
vagrant ssh
# build
time /vagrant/Tools/autotest/sim_vehicle.py -j 2
time /vagrant/Tools/autotest/sim_vehicle.py -j 2 --console --map
# run it again after run first time

#vagrant ssh -c "time /vagrant/Tools/autotest/sim_vehicle.py -j 2 --console --map"
