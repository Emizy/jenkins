#!/bin/bash

# check if env directory exist for python
if [ -d "gymenv" ]; then
  echo "Python virtual environment exist"
else
  python3 -m venv gymenv
fi

echo $PWD

# activate virtual environment
source gymenv/bin/activate

# install project requirements
pip3 install -r requirements.txt

# check if log exist and create it if its does not exist
if [ -d "logs" ]; then
  echo "Logs folder already exist"
else
  sudo mkdir logs
  sudo touch logs/error.log logs/access.log
fi

# set permission of logs folder

sudo chmod -R 777 logs
echo "Environment setup done"
