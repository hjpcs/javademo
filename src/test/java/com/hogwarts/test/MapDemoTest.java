package com.hogwarts.test;

import org.junit.Test;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

public class MapDemoTest {

    @Test
    public void fun() {
        HashMap<String, Object> hashMap=new HashMap<>();
        hashMap.put("name","卡卡西");
        hashMap.put("age","22");
        hashMap.put("gender","男");

        /*Iterator<Map.Entry<String, Object>> iterator = hashMap.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry<String, Object> next = iterator.next();
            System.out.println("key是"+next.getKey());
            System.out.println("value是"+next.getValue());
        }*/

        //Set<Map.Entry<String, Object>> entries = hashMap.entrySet();
        for (Map.Entry en:hashMap.entrySet()) {
            System.out.println("key是"+en.getKey());
            System.out.println("value是"+en.getValue());
        }

        /*Set<String> strings = hashMap.keySet();
        for (String key:strings) {
            System.out.println("key是"+key);
            System.out.println("value是"+hashMap.get(key));
        }*/

    }

    @Test
    public void fun1() {
        LinkedHashMap<String, Object> linkedHashMap=new LinkedHashMap<String, Object>();
        linkedHashMap.put("name","卡卡西");
        linkedHashMap.put("age","22");
        linkedHashMap.put("gender","男");

        for (Map.Entry en:linkedHashMap.entrySet()) {
            System.out.println("key是" + en.getKey());
            System.out.println("value是" + en.getValue());
        }
    }
    //HashMap无序，LinkedHashMap有序
}


