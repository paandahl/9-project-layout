package com.benwixen.helloworld.tests;

import com.benwixen.helloworld.HelloWorldModule;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class HelloWorldModuleTests {

  @Test
  public void shouldSayHello() {
    HelloWorldModule helloWorldModule = new HelloWorldModule(new ReactContextMock());
    String hello = helloWorldModule.sayHello();
    assertEquals("Native hello world!", hello);
  }
}
