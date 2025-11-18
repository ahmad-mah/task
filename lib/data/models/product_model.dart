class ProductImage {
  final int id;
  final int productId;
  final String image;

  ProductImage({
    required this.id,
    required this.productId,
    required this.image,
  });

  factory ProductImage.fromJson(Map<String, dynamic> json) {
    return ProductImage(
      id: json['id'],
      productId: json['product_id'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'product_id': productId, 'image': image};
  }
}

class ProductModel {
  final int id;
  final int subCategoryId;
  final String price;
  final String? offerPrice;
  final String? deletedAt;
  final String title;
  final String description;
  final String image;
  final List<ProductImage> images;

  ProductModel({
    required this.id,
    required this.subCategoryId,
    required this.price,
    this.offerPrice,
    this.deletedAt,
    required this.title,
    required this.description,
    required this.image,
    required this.images,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      subCategoryId: json['sub_category_id'],
      price: json['price'],
      offerPrice: json['offer_price'],
      deletedAt: json['deleted_at'],
      title: json['title'],
      description: json['description'],
      image: json['image'],
      images: (json['images'] as List)
          .map((item) => ProductImage.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sub_category_id': subCategoryId,
      'price': price,
      'offer_price': offerPrice,
      'deleted_at': deletedAt,
      'title': title,
      'description': description,
      'image': image,
      'images': images.map((img) => img.toJson()).toList(),
    };
  }
}

class ProductResponse {
  final List<ProductModel> data;
  final String message;
  final int code;
  final int total;

  ProductResponse({
    required this.data,
    required this.message,
    required this.code,
    required this.total,
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) {
    return ProductResponse(
      data: (json['data'] as List)
          .map((item) => ProductModel.fromJson(item))
          .toList(),
      message: json['message'],
      code: json['code'],
      total: json['total'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.map((product) => product.toJson()).toList(),
      'message': message,
      'code': code,
      'total': total,
    };
  }
}
