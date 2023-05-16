package com.myapp;

/**
 * Hello world!
 *
 */
public class App {
    public static void main(String[] args) {
        System.out.println("Hello!");
        try {
            Thread.sleep(1000);
            System.out.println("World!");
            Thread.sleep(1000);
            System.out.println("My");
            Thread.sleep(1000);
            System.out.println("name");
            Thread.sleep(1000);
            System.out.println("is");
            Thread.sleep(1000);
            System.out.println("Anton");
            Thread.sleep(1000);
            System.out.println("Nice To meet YOU!!");
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
