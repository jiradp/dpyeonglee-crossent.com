!/bin/bash

source test_openrc

num=$1
for server_name in $(seq 37 ${num})
do
  echo "server create...${server_name}"
  openstack server create --flavor C2M4D20 --nic net-id=3b1a205e-2d54-494f-913e-f71f45b8aeef --image centos-7.6.18-cfg-drive-agent.raw --security-group 05f10953-e79f-4816-91fd-b5f2af58be2e --key-name 1-2_IM_BARISTA-default server$server_name > /dev/null
done