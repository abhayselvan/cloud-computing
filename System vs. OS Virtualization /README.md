#System vs. OS Virtualization

#Contents

1. System vs. OS Virtualization Report
2. Screenshots of experiments
3. Shell Scripts
4. Vagrant Setup
5. Docker setup

#Vagrant and virtualbox initialization

1. The user needs to download and install vagrant and virtual box.
2. The user needs to run the command "vagrant init bento/ubuntu-20.04" to get the ubuntu virtual box image.
3. The user should then replace the vagrant file in the folder with the contents of the vagrant file in the git repository.
4. The user should also download the other files in the vagrant folder of the git repository into their local folder.
5. The user should then run the command "vagrant up --provision" to run all the sysbench tests on the Ubuntu VM.

#Docker setup

1. The user should install Docker Desktop and then pull the image csminpp/ubuntu-sysbench using the command "docker pull csminpp/ubuntu-sysbench".
2. The user should run the dockerfile using the command "docker build -t <image_name> ."
3. The user should run the command "docker images" and copy the image id of the newly created container.
4. The user should then run the image using the command "docker run <image_id>"
