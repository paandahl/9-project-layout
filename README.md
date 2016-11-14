# 9-projects-layout

This is a boilerplate for distributable React Native components with native code
(iOS & Android). It has unit tests for native code, and integration tests for automated testing
on emulators or devices. The boilerplate contains a simple HelloWorld component that is backed
 by native code.

![](https://storage.googleapis.com/benwixen-site/rn_packages2.png)

When published and installed via npm, the resulting package supports automatic linking of the native 
code. You can install and link the HelloWorld component like this:

    npm install react-native-helloworld
    react-native link react-native-helloworld
    
## Explanation

For a full explanation of the layout, see 
[this article](https://www.benwixen.com/articles/distributing-react-native-components-with-native-code).

There are 3 sets of 3 projects (JS, Obj-C & Java). The first set is for the component code:

    /
    /android
    /ios

The second set is for unit- and integration tests:

    /tests
    /tests/android
    /tests/ios
    
The third set is just a sample project to demonstrate usage of the components. The Android and iOS
parts are just the standard React Native boilerplate:

    /example
    /example/android
    /example/ios

## Development

For development of the component code, first run `npm install` in the `tests`-folder. Since the 
native code is linked directly in the test-projects, they serve as a context you can develop it in
(the root projects only link React/Native as peer dependencies). 

### iOS

If you open `/tests/ios/HelloWorldTests.xcodeproj` in XCode, you can edit the native code and 
unit tests side-by-side. You'll find the native code under `Libraries/HelloWorld.xcodeproj`. 
Unit- and integration tests can be run together in the standard test-runner with ⌘+U.

### Android

Open `/tests/android` in Android Studio, and you'll find both the native code and the unit tests
in the project view. The unit tests can be run by right-clicking the package containing the tests,
and choosing *Run Tests in tests*.

There is not yet an automatic test runner for integration tests on Android, but you can run them by 
firing up `/tests` as a normal React Native app on an Android emulator or device, and selecting the 
tests  manually from a list.

### JS-code

To develop the JS-components and the integration tests, just open `/tests` in your editor of choice 
(f.ex. Atom or WebStorm). The `/tests/symlinks`-folder links in the code from the root projects
for convenience.
Integration tests are located under `/tests/integration-test`.

There is a script `/tests/make-copies.sh` that copies the JS-code from the root project into a 
folder `/tests/copies`. This is because the React Native packager doesn't follow symlinks. When 
running the integration tests through XCode, this script is run automatically.

Since this project aims to demonstrate native code bundling, we haven't included any unit-tests
for the JS components. But if you add Jest-tests, they're automatically excluded from the npm
bundle.

### Example code

The `/example` folder contains a React Native app that demonstrates usage of your components. 
Ideally, you only touch the JS-code, and leave the React Native 
boilerplate as it is.

To run it, first do an `npm install` from the `/example` folder, then `react-native link`. 
For iOS simulators or Android, you can run `react-native run-ios` or `react-native run-android` 
from the same folder.

To run on an iOS device, open the `/example/ios/HelloWorldExample.xcodeproj` 
in XCode, select a development team for code signing (under the General tab of each target in the
project settings), and hit ⌘+R.

## Publishing

Once you have finished your components, you can run a normal `npm publish` from the root folder. The
`/tests` and `/example` folders are automatically excluded from the package.

Once installed and linked in a project, your components can easily be imported:

````javascript
import HelloWorld from 'react-native-helloworld';

function MyComponent() {
  return <HelloWorld />; 
}
````

