package com.benwixen.helloworld;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;

public class HelloWorldViewManager extends SimpleViewManager<HelloWorldView> {

  @Override
  public String getName() {
    return "HelloWorldView";
  }

  @Override
  protected HelloWorldView createViewInstance(ThemedReactContext reactContext) {
    return new HelloWorldView(reactContext);
  }
}
