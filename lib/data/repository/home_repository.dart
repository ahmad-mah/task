import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/network/api_constants.dart';
import '../../core/network/api_service.dart';
import '../../core/network/failure.dart';
import '../models/banner_model.dart';
import '../models/product_model.dart';
import '../models/service_model.dart';


abstract class HomeRepository {
  Future<Either<Failure, List<BannerModel>>> getBanners();
  Future<Either<Failure, List<ProductModel>>> getProducts(
    Map<String, dynamic> body,
  );
  Future<Either<Failure, List<ServiceModel>>> getServices(
    Map<String, dynamic> body,
  );
}

class HomeRepositoryImpl implements HomeRepository {
  final ApiService _apiService = ApiService(Dio());

  @override
  Future<Either<Failure, List<BannerModel>>> getBanners() async {
    try {
      var data = await _apiService.get(endpoint: ApiConstants.getBanners);
      BannerResponse response = BannerResponse.fromJson(data);
      return right(response.data);
    } catch (e) {
      if (e is DioException) return left(ServerFailure.fromDioError(e));
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getProducts(
    Map<String, dynamic> body,
  ) async {
    try {
      var data = await _apiService.post(
        endpoint: ApiConstants.getProducts,
        body: body,
      );
      ProductResponse response = ProductResponse.fromJson(data);
      return right(response.data);
    } catch (e) {
      if (e is DioException) return left(ServerFailure.fromDioError(e));
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ServiceModel>>> getServices(
    Map<String, dynamic> body,
  ) async {
    try {
      var data = await _apiService.post(
        endpoint: ApiConstants.getServices,
        body: body,
      );
      ServiceResponse response = ServiceResponse.fromJson(data);
      return right(response.data);
    } catch (e) {
      if (e is DioException) return left(ServerFailure.fromDioError(e));
      return left(ServerFailure(e.toString()));
    }
  }
}
