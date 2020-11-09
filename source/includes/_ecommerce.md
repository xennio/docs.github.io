# E-commerce

## Tracking Product Views

```swift
// call method below when rendering product detail page
Xennio.ecommerce().productView(
    productId: "productId",
    variantId: "small", 
    price: 300, 
    currency: "USD", 
    supplierId: "supplier1")

```

```java
// call method below when rendering product detail page
Xennio.ecommerce().productView(
    "productId", 
    "small", 
    400d,
    300d,
    "USD",
    "supplier1",
    "resolvedPath");

```

```javascript
// add script 
xpPageLayer["entity"] = 'products';
xpPageLayer["id"] = 'productId';
xpPageLayer["variant"] = 'variant';
xpPageLayer["price"] = 400;
xpPageLayer["discountedPrice"] = 300;
xpPageLayer["supplierId"] = "supplierId";
```


Parameter       | Type   | Optional | Description
---------       | -----  | -------- | -----------
productId       | String | false    | Product id of visited entity.
variant         | String | true     | Variant name of product if available. Small, Medium, XXL etc.
price           | Double | false    | Base price of the product without discount.
discountedPrice | Double | true     | Discounted price of the product.
currency        | String | false    | ISO currency code of the product.
supplierId      | String | true     | Set this if you have listings more than one supplier is selling at the same platform.
path            | String | true     | IOS and Android SDK only link to the product.
