# Test Automation Project

### Overview

This project is designed to automate the deployment of various services across multiple hosts using Ansible-Core. Please note that this project might not be compatible with Ansible due to differences in syntax and features.

### Requirements

- Ansible-Core installed on the host machine.
- Access to target hosts via SSH.
- Python 3 installed on all target hosts.
- Internet access for downloading necessary packages and binaries.

### Setup

1. Clone this repository to your local machine:

```bash
git clone https://github.com/c3ngo/ansible-ftp-minio
```

2. Ensure Ansible-Core is installed on your local machine. If not installed, you can install it via pip.

```bash
pip install ansible-core
```

3. The hosts.ini file does not need to be updated.


### Usage

You can run the Ansible playbook without any mandatory modifications. The playbook is designed to work out of the box.

1. Navigate to the project directory:

```bash
cd <project_directory>
```

2. Run the Ansible playbook to deploy the services:

```bash
ansible-playbook playbook.yaml
```

3. The playbook will deploy the following services:
  - VSFTP on host2 for secure file transfer.
  - Cron jobs for automated tasks such as FTP file transfer and Minio backup on host1 and host2.
  - Minio S3 server on host3 for object storage.

### Configuration

- Modify the variables in main.yml to customize service configurations such as FTP user credentials, Minio access keys, bucket names, etc.
- Optionally, you may need to adjust some values in the vm-template.xml.j2 file. These values may vary from system to system.

### Default Minio User Credentials

- Username: `forme1`
- Password: `deneme123456`

### Notes

- Please note that this project is designed to work with Ansible-Core and may not be compatible with Ansible due to differences in syntax and features.
- Ensure proper firewall configurations to allow service access.
- Review service configurations and adjust them according to your requirements.

### Contributing

Contributions are welcome! Feel free to submit issues, feature requests, or pull requests.
