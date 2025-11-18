import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../core/network/failure.dart';
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

    final result = await Future.wait([
      _repository.getBanners(),
      _repository.getProducts({}),
      _repository.getServices({}),
    ]);

    final bannersResult = result[0] as Either<Failure, List<BannerModel>>;
    final productsResult = result[1] as Either<Failure, List<ProductModel>>;
    final servicesResult = result[2] as Either<Failure, List<ServiceModel>>;

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
