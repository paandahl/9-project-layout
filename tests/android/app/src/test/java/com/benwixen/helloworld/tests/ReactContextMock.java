package com.benwixen.helloworld.tests;

import com.facebook.react.bridge.ReactApplicationContext;

public class ReactContextMock extends ReactApplicationContext {

  public ReactContextMock() {
    super(new AndroidContextMock());
  }
}

