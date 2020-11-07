# E-commerce

## Tracking Product Views

```swift

Xennio.ecommerce().productView(
    productId: "productId",
    variantId: "small", 
    price: 300, 
    currency: "USD", 
    supplierId: "supplier1")

```

```java

Xennio.ecommerce().productView(
        "productId", 
        "variantId", 
        200, 
        150);

```

```javascript
xpPageLayer["entity"] = 'products';
xpPageLayer["id"] = 'productId';
xpPageLayer["variant"] = 'variant';
xpPageLayer["price"] = 400;
xpPageLayer["discountedPrice"] = 300;
xpPageLayer["supplierId"] = "supplierId";
```


Parameter | Type   | Optional | Description
--------- | -----  | --------- | -----------
productId | String | false     | If set to true, the result will also include cats.
variant   | String | true      | If set to false, the result will include kittens that have already been adopted.
price     | Double | false      | If set to false, the result will include kittens that have already been adopted.
discountedPrice | Double | true | If set to false, the result will include kittens that have already been adopted.
currency  | String | false      | If set to false, the result will include kittens that have already been adopted.
supplierId  | String | true      | If set to false, the result will include kittens that have already been adopted.
path  | String | true      | If set to false, the result will include kittens that have already been adopted.
