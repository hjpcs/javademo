package com.hogwarts.interfacetest;
/*
* 客户业务接口
* 接口作用：
* 1、可以使项目分层，所有层都面向接口开发，开发效率提高了
* 2、接口使代码和代码之间耦合度降低，就像内存条和主板的关系，变得可插拔，可随意切换
 */
public interface CustomerService {

    //定义一个退出系统的方法
    void logout();

}
