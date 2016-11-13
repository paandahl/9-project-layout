import React from 'react';
import ReactNative from 'react-native';

const HelloWorldModule = ReactNative.NativeModules.HelloWorld;
const HelloWorldView = ReactNative.requireNativeComponent('HelloWorldView', null);

export default class HelloWorld extends React.Component {

  static async sayHello() {
    return await HelloWorldModule.sayHello();
  }

  render() {
    return <HelloWorldView />;
  }
}
