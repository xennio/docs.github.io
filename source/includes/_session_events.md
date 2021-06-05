# Session Parameters

Xenn.io SDK is managing session automatically. To create more deep analysis before firing events you have to consider completing session setup.

## Identifying your members

You can correlate your logged-in session activities with using SDK login method. You can call this method anytime after configuring Xenn.io.
If this method called before any eventing activities, memberId will be inserted session variables. If this method called after any eventing
activities new session will start and all events will be correlated with new session.

### iOS SDK

```swift
Xennio.login(memberId: "YOUR_MEMBER_ID")
```

### Android SDK

```java
Xennio.login("YOUR_MEMBER_ID");
```

## Removing member from session

In case of removing association between session and member you can simply call SDK logout method. If this method called after any eventing
activities new session will start and all events will be correlated with new session.

### iOS SDK

```swift
Xennio.logout()
```

### Android SDK

```java
Xennio.logout();
```

## Correlating external application parameters with session

Most of the applications would like to track their external traffic sources. For tracking external traffic sources, Xenn.io SDK provides
method to synchronize parameters like utm_source, utm_campaign_ utm_medium, utm_term, utm_content and gclid(Google Ad Id).

### iOS SDK

Open AppDelegate file and add lines to application open url method.

```swift
func application(_ application: UIApplication, open url: URL,
                     options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
 // An extension method can be used for mapping all url query string parameters to Dictionary
 let externalParameters = url.queryDictionary
 if(externalParameters != nil) {
   Xennio.synchronizeWith(externalParameters: externalParameters!)
 }
 return true
}
```

### Android SDK

In MainActivity add lines to onNewIntent method

```java
@Override
protected void onNewIntent(Intent intent) {
  super.onNewIntent(intent);
  Map<String,Object> extraParameters = new HashMap<>();
  Bundle bundle = intent.getExtras();
  if (bundle != null) {
    for (String key : bundle.keySet()) {
      extraParameters.put(key, bundle.get(key));
    }
  }
Xennio.synchronizeIntentData(extraParameters);
}
```

## Correlating A/B test definitions with session
