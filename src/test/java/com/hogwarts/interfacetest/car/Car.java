package com.hogwarts.interfacetest.car;
/*
生产汽车
 */
public class Car {
    //FieId
    //引擎
    //面向接口编程
    Engine e;
    //costructor
    Car(Engine e) {
        this.e=e;
    }

    //汽车应该能够测试引擎
    public void testEngine() {
        e.start();//面向接口调用
    }
}

