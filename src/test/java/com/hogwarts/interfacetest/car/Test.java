package com.hogwarts.interfacetest.car;

public class Test {
    public static void main(String[] args) {
        //1.生产引擎
        Engine e1=new YAMAHA();
        //2.生产汽车
        Car c=new Car(e1); //Engine e=e1
        //3.测试引擎
        c.testEngine();
        //4.换HONGDA
        c.e=new HONGDA();
        c.testEngine();
    }
}
