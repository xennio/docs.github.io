# Android SDK Setup

### Integration of Xenn.io SDK to your Android native app with Java or Kotlin
[![codecov](https://codecov.io/gh/xennio/harray-android-sdk/branch/master/graph/badge.svg)](https://codecov.io/gh/xennio/harray-android-sdk)
![GitHub](https://img.shields.io/github/license/xennio/harray-android-sdk?style=flat-square)
[![Maven Central](https://maven-badges.herokuapp.com/maven-central/io.xenn/android-sdk/badge.svg?style=plastic)](https://maven-badges.herokuapp.com/maven-central/io.xenn/android-sdk)
## Step 1 - Requirements
- Xenn.io account if you do not already have one
- Your Xenn.io App ID, available in Setup > Applications in the Xenn.io console

## Step 2 - Installing the Xenn.io SDK
### Dependency Repository Config

- In app module's build.gradle file, add dependency statement inside of dependencies block

```java
dependencies {
implementation group: 'io.xenn', 
  name: 'android-sdk', version: '3.1.2'
}
```
Check latest version of SDK from [here](https://mvnrepository.com/artifact/io.xenn/android-sdk)

- Refresh your dependencies from Android Studio

## Step 3 - Configuring of Android SDK
Open your project's Application file and add the Xenn.io configuration codes with your credentials to onCreate method.

```java
@Override
public void onCreate() {
  super.onCreate();
  XennConfig xennConfig = XennConfig.init("YOUR_SDK_KEY").useXennPlugin(FcmKitPlugin.class);
  Xennio.configure(this, xennConfig);
}
```

* Replace `YOUR-SDK-KEY` with your Application SDK Key

Now IOS SDK Setup installation completed you can navigate from [here](#events) documentation for event collecting
