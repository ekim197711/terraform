cd ~/apps
wget https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.7_linux_amd64.zip
unzip ./terraform_0.14.7_linux_amd64.zip
mkdir tf
mv ./terraform ./tf/
sudo ln -s ~/apps/tf/terraform /usr/bin/terraform
