class ServiceImage {
  final int id;
  final int serviceId;
  final String image;

  ServiceImage({
    required this.id,
    required this.serviceId,
    required this.image,
  });

  factory ServiceImage.fromJson(Map<String, dynamic> json) {
    return ServiceImage(
      id: json['id'],
      serviceId: json['service_id'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'service_id': serviceId, 'image': image};
  }
}

class ServiceModel {
  final int id;
  final int subCategoryId;
  final int price;
  final int? offerPrice;
  final String? deletedAt;
  final String title;
  final String description;
  final List<ServiceImage> images;
  final List<dynamic> advices;
  final List<dynamic> rates;

  ServiceModel({
    required this.id,
    required this.subCategoryId,
    required this.price,
    this.offerPrice,
    this.deletedAt,
    required this.title,
    required this.description,
    required this.images,
    required this.advices,
    required this.rates,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      id: json['id'],
      subCategoryId: json['sub_category_id'],
      price: json['price'],
      offerPrice: json['offer_price'],
      deletedAt: json['deleted_at'],
      title: json['title'],
      description: json['description'],
      images: (json['images'] as List)
          .map((item) => ServiceImage.fromJson(item))
          .toList(),
      advices: json['advices'] ?? [],
      rates: json['rates'] ?? [],
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
      'images': images.map((img) => img.toJson()).toList(),
      'advices': advices,
      'rates': rates,
    };
  }
}

class ServiceResponse {
  final List<ServiceModel> data;
  final String message;
  final int code;
  final int total;

  ServiceResponse({
    required this.data,
    required this.message,
    required this.code,
    required this.total,
  });

  factory ServiceResponse.fromJson(Map<String, dynamic> json) {
    return ServiceResponse(
      data: (json['data'] as List)
          .map((item) => ServiceModel.fromJson(item))
          .toList(),
      message: json['message'],
      code: json['code'],
      total: json['total'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.map((service) => service.toJson()).toList(),
      'message': message,
      'code': code,
      'total': total,
    };
  }
}
