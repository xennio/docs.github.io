# Recommendations

Xenn.io provides IOS, Android and JavaScript SDK's for collecting application event data. 
The following guide will describe you how to integrate your application using related SDK.

## IOS
[![Build Status](https://travis-ci.org/xennio/harray-ios-sdk.svg?branch=master)](https://travis-ci.org/xennio/harray-ios-sdk)
[![codecov](https://codecov.io/gh/xennio/harray-ios-sdk/branch/master/graph/badge.svg)](https://codecov.io/gh/xennio/harray-ios-sdk)
[![Version](https://img.shields.io/cocoapods/v/Xennio.svg?style=flat)](https://cocoapods.org/pods/Xennio)
![GitHub](https://img.shields.io/github/license/xennio/harray-ios-sdk?style=flat-square)

### Dependency Repository & Application Config

Xenn.io IOS SDK releases can be reachable from [Cocoa Pods](https://cocoapods.org/). 
Be sure that you added dependency to your `Podfile` file

```swift
target 'your-ios-application' do
 pod 'Xennio', '~> 2.5.8'
end
```

After resolving dependencies configure your application with your provided Xenn.io key.

```swift
let xennConfig = XennConfig.create(sdkKey: "YOUR-SDK-KEY")
Xennio.configure(xennConfig: xennConfig)
```

## Android

[![Build Status](https://travis-ci.org/xennio/harray-android-sdk.svg?branch=master)](https://travis-ci.org/xennio/harray-android-sdk)
[![codecov](https://codecov.io/gh/xennio/harray-android-sdk/branch/master/graph/badge.svg)](https://codecov.io/gh/xennio/harray-android-sdk)
![GitHub](https://img.shields.io/github/license/xennio/harray-android-sdk?style=flat-square)
[![Maven Central](https://maven-badges.herokuapp.com/maven-central/io.xenn/android-sdk/badge.svg?style=plastic)](https://maven-badges.herokuapp.com/maven-central/io.xenn/android-sdk)


### Dependency Repository Config

Xenn.io Android SDK releases can be reachable from maven public repositories. 
Be sure that you added dependency to your `build.gradle` file

```java
repositories {
  mavenCentral()
}
```

In app module's build.gradle file, add dependency statement inside of dependencies block : **

```java
dependencies {
implementation group: 'io.xenn', 
    name: 'android-sdk', version: '3.1.5'
}
```

Check latest version of SDK from [here](https://mvnrepository.com/artifact/io.xenn/android-sdk)

After resolving dependencies configure your application with your provided Xenn.io key.

```java
XennConfig xennConfig = XennConfig.init("XENN_SDK_KEY");
Xennio.configure(this, xennConfig);
```


## Javascript

```javascript
<script type="application/javascript">
        var xpPageLayer = xpPageLayer || {}; 
        var __xennioSdkKey = 'YOUR_SDK_KEY'; 
        var s = document.createElement('script');
        s.setAttribute('src', 'https://s.xenn.io/xenn.io.min.js'); 
        s.async = true;
        document.getElementsByTagName('script')[0].appendChild(s);
</script>
```
