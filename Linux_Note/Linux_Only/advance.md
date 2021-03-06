### 进阶命令和高级命令

---

#### 进阶指令

* **查看磁盘**

  ```shell
  #直接查看
  df
  #按照合适的单位显示查看
  df -h	
  ```

* **查看内存**

  注：在 Manjaro 的 Terminal 选项参数不生效。不知道为什么。

  ```shell
  #简单查看
  free
  #查看，以 MB 为单位
  free -m
  #查看，以 GB 为单位
  free -g
  ```

* **head 指令** 

  查看一个文件的前 n 行，如果不指定 n，则默认显示前 10 行。

  ```shell
  #查看文件
  head filePath
  #查看文件前 20 行
  head -20 filePath
  ```

* **tail 指令** 

  查看一个文件的后 n 行，如果不指定 n，则默认显示后 10 行。

  ```shell
  #查看文件
  tail filePath
  #查看文件前 20 行
  tail -20 filePath
  #查看文件的动态变化，一般用来查看日志。
  tail -f filePath
  ```

* **less 指令**

  查看文件，以较少的内容进行输出，按下辅助功能键查看更多。

  ```shell
  #
  less filePath
  #翻页
  空格键
  #下一行
  回车或者向下键
  #指定行，如：19 行
  19 + 回车
  ```

* **wc 指令**

  统计文件内容信息。包括行数/单词数/字节数。

  ```shell
  #统计行数
  wc -l filePath
  #统计单词数
  wc -w filePath
  #统计字节数
  wc -c filePath
  ```

* **date 指令**

  操作时间日期，读取/设置，shell 脚步常用。

  ```shell
  #查看时间，输入格式为：2019年 03月 31日 星期日 13:47:12 CST
  date
  #查看时间，按照指定格式输出: 2019-03-31
  date +%F
  #查看时间，按照指定格式输出: 13:47:55
  date +%T
  #查看时间，年-月-日 时:分:秒。单引号和双引号都可以。输入为：2019-03-31 13:48:44
  date '+%F %T'
  #获取其他时间，向前或向后。后面可以加输出格式选项。
  #一天前时间
  date -d '-1 day' 
  #一月前时间
  date -d '-1 month' 
  #一年前时间
  date -d '-1 year' 
  
  ```

* **cal 指令**

  操作日历

  ```shell
  #输出当前月份的日历
  cal
  #或者
  cal -1
  #输出 上个月，这个月，下个月的日历
  cal -3
  #输出某一年的日历
  cal -y 年份
  #以星期日为第一列，输出
  cal -s
  #以星期一为第一列，输出
  cal -m
  ```

* **管道**

  管道符号：|

  作用：过滤/扩展处理

  ```shell
  #1.过滤。过滤出当前目录下含有字母 b 的文件和文件夹
  ls | grep b
  #2.扩展处理，如：统计 /bin/ 目录下的文件个数,-w 也可以，但是 -l 更好。
  ls /bin | wc -l
  
  ```

  ---

#### 高级指令

* **hostname**

  操作服务器的主机名(读取和设置)，设置是临时的，重启后回复。

  ```shell
  #输出完整的主机名
  hostname
  #输出当前主机名中的 FQDN(全限定域名)
  hostname -f
  
  ```

* **id 指令**

  查看一个用户的基本信息：用户id，用户组id，附加组id... 如果不指定用户，则默认当前用户。

  ```shell
  #查看当前用户信息
  id
  #查看指定用户的信息
  id 用户名
  ```

* **whoami 指令**

  显示当前登陆的用户名。一般用户写 shell 脚本。

* **ps -ef 指令**

  查看进程信息。

  选项含义：

  ​	-e  等价于 "-A"，表示列出全部的进程

  ​	-f   显示全部的列(全字段)

  列的含义：

  ​	UID： 该进程执行的用户 id。

  ​	PPID： 该进程的父级进程 id，如果父级进程找不到，那么该进程称为 **僵尸进程**。

  ​	C:  CPU 占用率。

  ​	STIME： 进程的启动时间。

  ​	TTY： 设备终端，发起该进程的设备识别符号，如果显示 "?" 则表示该进程不是由终端设备发起的。

  ​	TIME： 进程的执行时间。

  ​	CMD： 该进程的名称或者对应的路径。

  ```shell
  #过滤进程
  ps -ef | grep 进程名称
  ```

* **top 指令**

  查看进程占的资源

  排序：

   	1. 执行命令后，按下 M 键，按照内存从高到低排列。
   	2. 按下 P，按照 cpu 使用率 从高到低排列。
   	3. 按下 1，如果有多个 cpu 的话，可以显示各个 cpu 使用情况。但是在 Manjaro 上面默认就显示每个 cpu 使用情况。

* **du -sh 指令**

  查看目录真实大小。

  选项含义：

  ​	-s: summaries，只显示汇总的大小

  ​	-h: 表示以较高可读性的形式显示

  ```shell
  #统计目录[/etc/]大小
  su -sh /etc/
  ```

* **find 指令**

  查找文件，参数很多，有 55 个。

  语法：find 路径范围 选项 选项的值

  ```shell
  选项：
  	-name 按照文件的名称搜索
  	-type 按照文档的类型进行搜索
  #搜索 pacman.conf 文件
  sudo find / -name pacman.conf
  #搜索根目录下所有文件类型是文件的文档
  sudo find / -type f
  #搜索根目录下所有文件类型是文件夹的文档
  sudo find / -type d
  ```

* **service 指令**

  控制一些软件的服务 启动/停止/重启

  语法：

  ​	service 服务名 start/stop/restart

  ```shell
  #启动本地安装的 Apache，其中服务名为：httpd
  service httpd start		
  ```

* **kill 指令**

  杀死进程

  语法：

  ​	kill PID

  ​	killall 进程名称

* **ifconfig 指令**

  操作网卡相关

* **reboot 指令**

  ```shell
  #重启
  reboot
  #模拟重启，实际不重启。只写开关机日志
  reboot -w
  ```

* **shutdown 指令**

  ```shell
  #指定时间关机，并且提醒。想取消就：ctrl + c
  shutdown -h 16:50 '电脑将在下午 4:50 关机，关机后，你就可以去玩了！'
  #取消本次关机
  shutdown -c
  #或者
  ctrl + c
  ```

  其他关机命令：

  1. init 0
  2. halt
  3. poweroff

* **uptime 指令**

  输出计算机持续运行时间

* **uname 指令**

  获取计算机操作系统相关信息

  ```shell
  #操作系统类型
  uname
  #操作系统详细信息
  uname -a
  ```

* **netstat -tnlp 指令**

  选项说明：

  ​	-t:	列出 tcp 协议的连接

  ​	-n:	表示将地址从字母组合转化成 ip 地址，将协议转化成端口号来显示。

  ​	-l:	过滤出 "state" 列中值为 LISTEN「监听」 的连接。	

  ​	-p:	显示发起连接的进程 PID 和名称。 

* **操作命令行内容**

  ```shell
  #删除命令行光标前的内容
  ctrl + u
  #删除命令行光标后的内容
  ctrl + k
  ```

  