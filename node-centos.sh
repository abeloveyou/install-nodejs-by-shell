#！/bin/bash

# 开始
set -e
set -x

# 进入 /usr/local/ 目录
cd /usr/local/

# 下载nodeJs
wget https://nodejs.org/dist/v15.9.0/node-v15.9.0-linux-x64.tar.xz

# 开始解压
tar -xvf node-v15.9.0-linux-x64.tar.xz

# 删除软件包
rm -rf node-v15.9.0-linux-x64.tar.xz

# 重命名
mv node-v15.9.0-linux-x64/ node

# 修改配置文件
echo 'export NODE_HOME=/usr/local/node' >> /etc/profile
echo 'export PATH=$NODE_HOME/bin:$PATH' >> /etc/profile

cd ~

set +x
echo '========================================node安装成功======================================='

# 安装yarn
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo yum -y install yarn

set +x
echo '=================================运行完毕，恭喜您已完成安装================================'
