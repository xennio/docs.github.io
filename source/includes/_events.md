# Events

Xenn.io SDK provides both structured event collection and custom event collection methods
The following guide will describe you how to create event with SDK.

## Page Views

Page view events should be fired whenever a page rendered. You should set pageType in method parameters.
You can add extra parameters to your page view events.

### iOS SDK

```swift
Xennio.eventing().pageView(pageType: "homePage")
// Page view events with extra parameters
Xennio.eventing().pageView(pageType: "homePage", params: ["url": "https://xenn.io/detail", 
"id": "12312", "hasAccess": false])
```

### Android SDK

```java
Xennio.eventing().pageView("homePage");
// Page view events with extra parameters
Map<String, Object> params = new HashMap<>();
params.put("url", "https://xenn.io/detail");
params.put("id", "12312");
params.put("hasAccess", true);
Xennio.eventing().pageView("homePage", params);
```

## Action Results

Action results should be fired whenever a visitor takes action like submit a form, change sorting direction, adding item to cart. 
You should set type of action in method parameters. You can add extra parameters to your action result events.

### iOS SDK

```swift
Xennio.eventing().actionResult(type: "testAction")
// Page view events with extra parameters
Xennio.eventing().actionResult(type: "homePage", params: ["url": "https://xenn.io/detail", 
"id": "12312", "hasAccess": false])
```

### Android SDK

```java
Xennio.eventing().actionResult("testAction");
// Page view events with extra parameters
Map<String, Object> params = new HashMap<>();
params.put("url", "https://xenn.io/detail");
params.put("id", "12312");
params.put("hasAccess", true);
Xennio.eventing().actionResult("testAction", params);
```

## Impressions

Impression should be fired whenever application displays banner, product, listing etc. 
You should set type of action in method parameters. You can add extra parameters to your impression events.

### iOS SDK

```swift
Xennio.eventing().impression(type: "bannerView")
// Page view events with extra parameters
Xennio.eventing().impression(type: "bannerView", params: ["entity": "banners", 
"id": "12312", "hasAccess": false])
```

### Android SDK

```java
Xennio.eventing().impression("bannerView");
// Page view events with extra parameters
Map<String, Object> params = new HashMap<>();
params.put("entity", "banners");
params.put("id", "12312");
params.put("hasAccess", true);
Xennio.eventing().impression("bannerView", params);
```

## Custom Events

Custom events can also stored in Xenn.io. You cannot use in segmentation or queries but it will be stored like other events. 
You should set name of custom event in method parameters. You can add extra parameters to your custom events.

### iOS SDK

```swift
Xennio.eventing().custom(eventName: "Click")
// Page view events with extra parameters
Xennio.eventing().custom(eventName: "Click", params: ["buttonName": "Add To Cart", "origin": "productDetail"])
```

### Android SDK

```java
Xennio.eventing().custom("Click");
// Page view events with extra parameters
Map<String, Object> params = new HashMap<>();
params.put("buttonName", "Add To Cart");
params.put("origin", "productDetail");
Xennio.eventing().custom("Click", params);
```
