import 'package:flutter/material.dart';

import '../../data/models/banner_model.dart';
import '../../data/models/product_model.dart';
import '../../data/models/service_model.dart';
import '../../data/repository/home_repository.dart';




class HomeProvider extends ChangeNotifier {
  final HomeRepository _repository = HomeRepositoryImpl();

  List<BannerModel> banners = [];
  List<ProductModel> products = [];
  List<ServiceModel> services = [];

  bool isLoading = false;
  String? errorMessage;

  Future<void> fetchHomeData() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    final bannersResult = await _repository.getBanners();
    final productsResult = await _repository.getProducts({});
    final servicesResult = await _repository.getServices({});

    bannersResult.fold(
      (failure) => errorMessage = failure.errorMsg,
      (data) => banners = data,
    );

    productsResult.fold(
      (failure) => errorMessage = failure.errorMsg,
      (data) => products = data,
    );

    servicesResult.fold(
      (failure) => errorMessage = failure.errorMsg,
      (data) => services = data,
    );

    isLoading = false;
    notifyListeners();
  }
}
