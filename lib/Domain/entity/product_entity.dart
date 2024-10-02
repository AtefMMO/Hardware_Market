class ProductEntity{
  final String productName;
  final int productPrice;
  final String productImage;
  final String productDescription;
  final String productCategory;
  final int productId;
  final bool productAvailability;
  final int productQuantity;
  final int productDiscount;
  final String productReference;
  final int productPriceBeforeDiscount;
  final String productManufacturer;
  final String productColor;
  final String productSimilarity;
  ProductEntity(
       this.productName,
       this.productPrice,
       this.productImage,
       this.productDescription,
       this.productCategory,
       this.productId,
       this.productAvailability,
       this.productQuantity,
       this.productDiscount,
       this.productReference,
       this.productPriceBeforeDiscount,
       this.productManufacturer,
       this.productColor,
       this.productSimilarity,
      );

}