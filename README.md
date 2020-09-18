<!-- 本文件由 ./readme.make.md 自动生成，请不要直接修改此文件 -->

# @rmw/domain-sign

## 域名格式定义

### 第一个字节 序列化格式

0 msgpackr # https://www.npmjs.com/package/msgpackr
1 zstd + msgpackr 

签名算法组合

HASH算法 签名算法
blaze3   bls

### 接口

* 设置域名签名

更新时间
域名 # 长度不超过255
域名公钥
签名算法组合
上一级域名公钥对以上内容先hash后签名

* 设置域名解析服务器

总字节数不超过 1MB 

域名
列表
  协议类型
    域名解析服务器地址

签名算法组合
签名

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
#!/usr/bin/env coffee
import domainSign from '@rmw/domain-sign'
import test from 'tape-catch'

test 'domain-sign', (t)=>
  console.log await domainSign "www.baidu.com"
  t.end()

```

## 关于

本项目隶属于**人民网络([rmw.link](//rmw.link))** 代码计划。

![人民网络](https://raw.githubusercontent.com/rmw-link/logo/master/rmw.red.bg.svg)
