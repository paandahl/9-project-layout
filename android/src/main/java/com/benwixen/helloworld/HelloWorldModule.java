package com.benwixen.helloworld;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

public class HelloWorldModule extends ReactContextBaseJavaModule {

  public HelloWorldModule(ReactApplicationContext reactContext) {
    super(reactContext);
  }

  @Override
  public String getName() {
    return "HelloWorld";
  }

  public String sayHello() {
    return "Native hello world!";
  }

  @ReactMethod
  public void sayHello(Promise promise) {
    promise.resolve(sayHello());
  }
}
