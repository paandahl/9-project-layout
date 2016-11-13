import React from 'react';
import ReactNative from 'react-native';
import LoggingTestModule from './LoggingTestModule';
import HelloWorld from '../copies/HelloWorld'

const View = ReactNative.View;
const Text = ReactNative.Text;
const TestModule = ReactNative.NativeModules.TestModule;
const invariant = require('fbjs/lib/invariant');

async function testSayHello() {
  const helloMessage = await HelloWorld.sayHello();
  LoggingTestModule.assertEqual('Native hello world!', helloMessage);
}

class HelloWorldTest extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      status: 'running',
    }
  }

  componentDidMount() {
    this.runTests();
  }

  async runTests() {
    try {
      await testSayHello();
    } catch (error) {
      LoggingTestModule.logErrorToConsole(error);
      if (TestModule) {
        TestModule.markTestPassed(false);
      }
      this.setState({ status: 'failed' });
      return;
    }
    if (TestModule) {
      TestModule.markTestPassed(true);
    }
    this.setState({ status: 'successful' });
  }

  render() {
    return <View><Text>{this.state.status}</Text></View>;
  }
}

HelloWorldTest.displayName = 'HelloWorldTest';

module.exports = HelloWorldTest;
