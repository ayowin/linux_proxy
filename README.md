# linux_proxy
linux ssh proxy




## 版本说明

### ssh_proxy

**完成反向隧道的功能**



### autossh_proxy

**完成反向隧道的免密、自动连接，但有因网络断线、延迟造成的重连bug，不完善**



### autossh_proxy2

**解决了autossh_prox的bug，真正稳定的反向隧道**



## 使用指南

### 服务器开启反向隧道

**修改`/etc/ssh/sshd_config`文件，如果没有添加即可**

```text
GatewayPorts yes
```

### 客户机 

**请阅读ssh_proxy、autossh_proxy、autossh_proxy2下的各个shell脚本即可。**

参考步骤：

1. xxx_start.sh # 开启代理
2. xxx_echo.sh # 查看代理状态
3. xxx_stop.sh # 关闭代理
