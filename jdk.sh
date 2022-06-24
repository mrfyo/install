# 0. 进入用户目录
cd ~
# 1. 下载JDK17
wget https://download.oracle.com/java/17/archive/jdk-17.0.3.1_linux-x64_bin.tar.gz

# 2. 解压JDK17
tar -xzvf jdk-17.0.3.1_linux-x64_bin.tar.gz

# 3. 移动到指定目录
sudo mkdir /usr/lcoal/jdk
sudo mv jdk-17.0.3.1 /usr/local/jdk/jdk-17

# 4. 安装JDK8
sudo apt-get update
sudo apt-get install openjdk-8-jdk
java --version