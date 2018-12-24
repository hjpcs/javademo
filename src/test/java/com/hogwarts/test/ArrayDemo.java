package com.hogwarts.test;

import org.junit.Test;

import java.util.Arrays;

public class ArrayDemo {

    @Test
    public void fun1() {
        int[] array=new int[5];
        for (int i=0; i<array.length; i++){
            System.out.println(array[i]);
        }
        System.out.println("----------------------");
        for (int arr:array){
            System.out.println(arr);
        }
    }

    @Test
    public void fun2() {
        int[] array={15,21,23,14,35,26,47,58,39};
        Arrays.sort(array);
        for (int arr:array){
            System.out.println(arr);
        }
        System.out.println(Arrays.toString(array));
    }
}
