# iOS SDK Setup

### Integration of Xenn.io SDK to your iOS native app with Swift or Objective-C
[![codecov](https://codecov.io/gh/xennio/harray-ios-sdk/branch/master/graph/badge.svg)](https://codecov.io/gh/xennio/harray-ios-sdk)
[![Version](https://img.shields.io/cocoapods/v/Xennio.svg?style=flat)](https://cocoapods.org/pods/Xennio)
![GitHub](https://img.shields.io/github/license/xennio/harray-ios-sdk?style=flat-square)
## Step 1 - Requirements
- Xenn.io account if you do not already have one
- Your Xenn.io App ID, available in Setup > Applications in the Xenn.io console

## Step 2 - Installing the Xenn.io SDK
### Setup with Cocoa Pods

- Add the Xenn.io dependency to project's `Podfile` like below

```swift
target 'your-ios-application' do
 pod 'Xennio', '~> 2.5.8'
end
```

- Run the following commands in terminal in your project folder

```swift
pod repo update
pod install
``` 

## Step 3 - Configuring of iOS SDK
Open AppDelegate file and add the Xenn.io configuration codes with your credentials to didFinishLaunchingWithOptions method.

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: 
 [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
 let xennConfig = XennConfig.create(sdkKey: "YOUR-SDK-KEY")
 Xennio.configure(xennConfig: xennConfig)   
 return true
}
```

* Replace `YOUR-SDK-KEY` with your Application SDK Key

Now IOS SDK Setup installation completed you can navigate from [here](#events) documentation for event collecting
