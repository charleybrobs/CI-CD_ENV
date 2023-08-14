# CI-CD_ENV
In this Project I configured a server with file inventory.cfg
To make sure ssh is running on a boot, I created file provision-server.yml in ansible-playbook and in an effective CI/CD environment
In provision-server.yml, I created admin groups and admin users, I also configured TFTP service that will allow router to save configurations anytime a change occurs
To perform initial system setup, file make-password.sh is created to write Bash script to for example force users to enter password twice
To connect services on network devices to NSO, I created network device csr1.xml, with python script, using REST API and with information based on yml
I Created file nso-device.py to send the xml to cisco NSO
With python script, I created file archive.xml to enable archiving to the TFTP services running in the system
I then created file nso-archive.py to make use of the above file archive.xml and send to cisco NSO
