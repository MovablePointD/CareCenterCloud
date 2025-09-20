### Spring Boot 2 Spring Cloud Demo

0. 写在前面：

​    这是一个将spring boot项目转变为spring cloud项目的远程代码储存仓库，仅仅包含后端部分，前端项目详见[MovablePointD/SpringBoot-2-S.Cloud-VUE](https://github.com/MovablePointD/SpringBoot-2-S.Cloud-VUE)。代码包含了所有后端代码，但运行时需要进行提前配置。代码为本地环境，仅供学习参考使用。

1. 环境需求：

   * Java 17 及以上
   * Maven 版本3.8.1 及以上
   * MySQL数据库版本8.4.0 及以上
   * Redis 5.0.14.1
   * nacos环境

   * 4GB+ Ram

   * 4核以上CPU

2. 如何运行项目

   0. 搭建好数据库环境，修改Java后端中application.yml内数据库的信息为自己本地的信息，仓库中完整数据库文件为CareCenter.sql；

   1. 打开本地的Redis客户端与nacos客户端，没有nacos的用户可以通过 [Nacos Quick Start | Nacos 官网](https://nacos.io/en/docs/next/quickstart/quick-start/?spm=5238cd80.cff869d.0.0.237f7e84WaDDJE) 进行下载安装，需要将8080-8090端口空闲以便项目展开；或者你也可以手动修改该项目中Gateway模块内application.yml文件中server.port项目修改gateway网关端口以空出8080端口；

   2. 依次运行项目中的全部子模块；
   3. 运行前端项目（见0. 写在前面），在浏览器中访问 127.0.0.1:80 即可通过前端查看项目。

3. 其他

​    如果你不想用这个spring cloud项目，只是想要使用boot项目，那么你可以参考 [XiaoHu22213/RongXiaoTong: 融消通农产品销售平台](https://github.com/XiaoHu22213/RongXiaoTong) 来学习Spring boot相关内容，这是我参与的另一个Spring boot架构的Java学习项目。

​    如果你想尝试将这个项目变为boot项目，那么你首先需要了解什么是Openfeign，来消除所有模块间调用的client类文件，并使用对应的service文件进行代替（用到其他模块的controller类文件中import部分打注释的内容），然后直接启动模块即可。

​    如果你只是想学习项目是怎么写的，我建议首先学习一下Spring Boot架构，然后合理使用AI工具进行学习。

