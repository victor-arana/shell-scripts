#!/bin/bash
# exit when any command fails
set -e
# 1. Install all necessary packages
sudo apt-get install wget apt-transport-https -y
# 2. Install RabbitMQ repository signing key
wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc | sudo apt-key add -
# 3. Add the RabbitMQ repository
echo "deb https://dl.bintray.com/rabbitmq-erlang/debian focal erlang-22.x" | sudo tee /etc/apt/sources.list.d/rabbitmq.list
# 4. Install the RabbitMQ Server
sudo apt-get install rabbitmq-server -y --fix-missing
# 5. Start the RabbitMQ service
sudo systemctl start rabbitmq-server
# 6. Enable RabbitMQ service to start on boot:
sudo systemctl enable rabbitmq-server
# 7. Enable RabbitMQ Management Dashboard
sudo rabbitmq-plugins enable rabbitmq_management
sudo rabbitmqctl add_user admin admin
sudo rabbitmqctl set_user_tags admin administrator
