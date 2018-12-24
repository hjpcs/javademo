package com.hogwarts.test;

import org.junit.Test;

import java.util.*;

public class ListDemoTest {

    @Test
    public void fun() {
        ArrayList arrayList=new ArrayList();
        arrayList.add("name");
        arrayList.add("age");
        arrayList.add("sex");
        for (int i=0; i<arrayList.size(); i++) {
            System.out.println(arrayList.get(i));
        }
    }

    @Test
    public void fun1() {
        ArrayList arrayList=new ArrayList();
        arrayList.add("name");
        arrayList.add("何金鹏");
        arrayList.add("age");
        //arrayList.add(23);
        arrayList.add("sex");
        arrayList.add("男");
        for (int i=0; i<arrayList.size(); i++) {
            System.out.println(arrayList.get(i));
        }
    }

    @Test
    public void fun2() {
        LinkedList<String> linkedList=new LinkedList<String>();
        linkedList.add("name");
        linkedList.add("何金鹏");
        linkedList.add("age");
        //linkedList.add(23);
        linkedList.add("sex");
        linkedList.add("男");
        for (int i=0; i<linkedList.size(); i++) {
            System.out.println(linkedList.get(i));
        }
    }

    @Test
    public void fun3() {

        long start=System.currentTimeMillis();
        System.out.println(start);
        LinkedList<Integer> linkedList=new LinkedList<Integer>();
        //ArrayList<String> arrayList=new ArrayList<String>();
        for (int i=0; i<10000000; i++){
            linkedList.add(i);
        }
        long end=System.currentTimeMillis();
        System.out.println(end);
        System.out.println(end-start);
    }

    @Test
    public void fun4() {

        long start=System.currentTimeMillis();
        System.out.println(start);
        ArrayList<Integer> arrayList=new ArrayList<Integer>();
        //ArrayList<String> arrayList=new ArrayList<String>();
        for (int i=0; i<10000000; i++){
            arrayList.add(i);
        }
        long end=System.currentTimeMillis();
        System.out.println(end);
        System.out.println(end-start);
    }

    @Test
    public void fun5() {
        HashSet hashSet=new HashSet();
        hashSet.add("name");
        hashSet.add("name");
        hashSet.add("name");
        hashSet.add("name");
        hashSet.add("name");

        Iterator iterator = hashSet.iterator();
        while (iterator.hasNext()) {
            System.out.println(iterator.next());
        }


    }

    @Test
    public void fun6() {
        ArrayList<Integer> list=new ArrayList<Integer>();
        list.add(55);
        list.add(15);
        list.add(34);
        list.add(27);
        list.add(48);
        list.add(36);
        list.add(67);
        System.out.println("排序前");
        for (Integer i:list) {
            System.out.println(i);
        }

        Collections.sort(list);
        System.out.println("排序后");
        for (Integer i:list) {
            System.out.println(i);
        }

        Collections.reverse(list);
        System.out.println("反转后");
        for (Integer i:list) {
            System.out.println(i);
        }

    }
}
