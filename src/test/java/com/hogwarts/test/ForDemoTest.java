package com.hogwarts.test;

import org.junit.Test;

public class ForDemoTest {

    @Test
    public void fun1() {
        for (int i=0; i<10; i++) {
            System.out.println(i);
        }
    }

    @Test
    public void fun2() {
        try {
            System.out.println(10/0);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            System.out.println("I am finally");
        }
    }

    @Test
    public void fun3() {
        String[] arr={"one","two","three","four"};
        for (int i=0; i<arr.length; i++){
            System.out.println(i+":"+arr[i]);
        }

        for (String str:arr) {
            System.out.println(str);
        }
    }
}
