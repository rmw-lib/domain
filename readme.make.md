# @rmw/domain-sign

## 域名格式定义

### 第一个字节 序列化格式

0 msgpackr # https://www.npmjs.com/package/msgpackr
1 zstd + msgpackr 

签名算法组合

HASH算法 签名算法
blaze3   bls

### 接口


备注：

* 设置解析地址（可以往所有自己的订阅者推送解析地址）
* 根域名证书没法改
* `*` 为泛域名

* 统计

上一次更新用的是哪个服务器
订阅 : 7 天后失效

统计订阅者
发现常用的服务器
优先推送

##  安装

```
yarn add @rmw/domain-sign
```

或者

```
npm install @rmw/domain-sign
```

## 使用

```
#include ./test/index.coffee
```

## 关于

本项目隶属于**人民网络([rmw.link](//rmw.link))** 代码计划。

![人民网络](https://raw.githubusercontent.com/rmw-link/logo/master/rmw.red.bg.svg)
