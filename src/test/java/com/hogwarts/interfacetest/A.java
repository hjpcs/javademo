package com.hogwarts.interfacetest;

public interface A {
    //常量
    public static final String SUCCESS="success";
    public static final double PI=3.14;
    byte MAX_VALUE=127;
    //抽象方法(接口中所有的抽象方法都是public abstract)
    public abstract void m1();
    void m2();

    interface B{
        void m1();
    }
    interface C{
        void m2();
    }
    interface D{
        void m3();
    }
    interface E extends B,C,D{
        void m4();
    }

    //implements是实现的意思，是一个关键字
    //implements和extends意义相同，但是extends已经写死了，只能单继承，所以引入implements
    class MyClass implements B,C{
        public void m1(){}
        public void m2(){}
    }

    class F implements E{
        public void m1(){}
        public void m2(){}
        public void m3(){}
        public void m4(){}
    }

}
