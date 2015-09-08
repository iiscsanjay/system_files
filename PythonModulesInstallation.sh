#!/bin/bash
PASS="sumitabhaDAS"
CurrentPath=`pwd`
cd ~/Dropbox/Research/PythonModules/
#---ASCIITABLE Installation---#
echo "Installing ASCIITABLE Module:"
tar -zxvf asciitable.tar.gz
cd asciitable
echo $PASS | sudo -S python3 setup.py install
echo $PASS | sudo -S python setup.py install
cd ..
echo $PASS | sudo -S rm -rf asciitable
#---YAML Installation---#
echo "Installing YAML Module:"
tar -zxvf  yaml.tar.gz
cd yaml
echo $PASS | sudo -S python3 setup.py install
echo $PASS | sudo -S python setup.py install
cd ..
echo $PASS | sudo -S rm -rf yaml
##---JSON Installation---#
echo "Installing JSON Module:"
tar -zxvf json.tar.gz
cd json
echo $PASS | sudo -S python3 setup.py install
echo $PASS | sudo -S python setup.py install
cd ..
echo $PASS | sudo -S rm -rf json
###---Numpy Installation---#
echo "Installing Numpy Module:"
tar -zxvf  numpy.tar.gz
cd numpy
echo $PASS | sudo -S python3 setup.py install
echo $PASS | sudo -S python setup.py install
cd ..
echo $PASS | sudo -S rm -rf numpy
#---ptyhon line by line profiler---#
echo "Installing Line Profiler Module:"
tar -zxvf line_profiler.tar.gz
cd line_profiler
echo $PASS | sudo -S python3 setup.py install
echo $PASS | sudo -S python setup.py install
cd ..
echo $PASS | sudo -S rm -rf line_profiler
#---ptyhon line by mrmory profiler---#
echo "Installing Memory Profiler Module:"
tar -zxvf memory_profiler.tar.gz
cd memory_profiler
echo $PASS | sudo -S python3 setup.py install
echo $PASS | sudo -S python setup.py install
cd ..
echo $PASS | sudo -S rm -rf memory_profiler
#---python line by need by memory profiler---#
echo "Installing PSutil Module:"
tar -zxvf psutil.tar.gz
cd psutil
echo $PASS | sudo -S python3 setup.py install
echo $PASS | sudo -S python setup.py install
cd ..
echo $PASS | sudo -S rm -rf psutil
#---BioPython Installation---#
echo "Installing BioPython Module:"
tar -zxvf  biopython-1.63.tar.gz
cd biopython
echo $PASS | sudo -S python3 setup.py install
echo $PASS | sudo -S python setup.py install
cd ..
echo $PASS | sudo -S rm -rf biopython

cd $CurrentPath
