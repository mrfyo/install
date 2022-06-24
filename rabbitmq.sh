if test $# -eq 2
then
    user=$1
    password$2

    # 1. 安装 Erlang
    sudo apt-get install erlang-nox 
    # 2. 添加公钥
    wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc | sudo apt-key add -
    # 3. 更新软件包
    sudo apt-get update
    # 4. 安装 RabbitMQ
    sudo apt-get install rabbitmq-server
    # 5. 查看状态
    systemctl status rabbitmq-server

    # sudo service rabbitmq-server start    # 启动
    # sudo service rabbitmq-server stop     # 停止
    # sudo service rabbitmq-server restart  # 重启 

    # 6. 安装web管理插件
    sudo rabbitmq-plugins enable rabbitmq_management
    # 7. 重启
    sudo service rabbitmq-server restart

    # 8. 添加用户(agv)
    sudo rabbitmqctl add_user $user $password
    # 9. 分配管理员角色(agv)
    sudo rabbitmqctl set_user_tags $user administrator 

    # 10. 分配权限
    sudo rabbitmqctl  set_permissions -p / $user '.*' '.*' '.*'
else
    echo "输入用户名 和 密码"
if

