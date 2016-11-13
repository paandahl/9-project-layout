# 9-projects-layout

This is a boilerplate for redistributable React Native components and modules with native code
(iOS & Android). It has unit tests for native code, and integration tests for running on emulators
or devices.

When installed via npm, it also supports automatic linking of native code.

## Explanation

What is a 9 projects layout? It is, as a matter of fact, a project layout consisting of 9 
individual sub-projects. But bear with me for a minute, it's not nearly as horrible as it sounds.

When you create a new React Native project, three different projects are created for you: the 
JS-code, a Java-project (for Android) and an Objective C-project (for iOS). This layout has 
three sets of those projects. The first set contains the component code:

    /
    /android
    /ios

Strictly speaking, this is the only set you need, but if you want your code base to stay stable and
 correct, you will want to add some tests. 
Since RN components are normally bundled with all source code, we want to keep the  
projects as simple as possible. To achieve this, we create a separate set of three projects for 
testing:

    /tests
    /tests/android
    /tests/ios
    
Since these projects link the component code directly, you can do all development from
within these projects in XCode, Android Studio, Webstorm, etc. 

The third set of projects are for a sample RN app, demonstrating the component / module in use.
This is of course optional, but a nice feature to have if you want to expand your audience.

    /example
    /example/android
    /example/ios

## Development

Like mentioned above, you can develop the component code through within the context of the 
test-projects. This makes sense because they normally are developed in parallel, and because React 
and React Native are peer dependencies of the main project 
(meaning they need the context of an app to resolve in your Javascript IDE).

## Unit testss

The unit tests for iOS run through the standard XCTest framework. On Android they run using JUnit.
The Javascript tests use jest.

## Integration tests

The integration tests run on iOS through a custom React test runner (that is compatible with XCode).
A test-runner for Android is not yet in place, but the tests can be run from the test app, by
running it on an emulator / device.
# 9-project-layout
