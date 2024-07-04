import 'package:dio/dio.dart';
import 'package:dog_adoption/core/constants/service_urls.dart';
import 'package:dog_adoption/core/model/breed_model/breed_model.dart';
import 'package:dog_adoption/core/model/dog_model/dog_model.dart';
import 'package:dog_adoption/core/model/response/base_response_model.dart';
import 'package:dog_adoption/core/provider/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dogService = Provider((ref) => DogService(ref));

class DogService {
  Ref ref;
  final Dio _dio;
  DogService(this.ref) : _dio = ref.watch(dioProvider((authRequired: true)));

  Future<List<DogModel>?> getAllDogs({String? breed, int? age}) async {
    try {
      final response = await _dio.get("${ServiceUrls.serverName}/dogs",
          queryParameters: {"breed": breed, "age": age});

      final result =
          BaseResponseModel.fromJson(response.data, DogModel.fromJson);
      if (result.data != null && result.data != {}) {
        return result.data;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<DogModel?> getDogWithId(int id) async {
    try {
      final response = await _dio.get(
        "${ServiceUrls.serverName}/dogs/$id",
      );

      final result =
          BaseResponseModel.fromJson(response.data, DogModel.fromJson);
      if (result.data != null && result.data != {}) {
        return result.data;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<DogModel>?> searchDog(String keyword) async {
    try {
      final response = await _dio.get("${ServiceUrls.serverName}/search",
          queryParameters: {"keyword": keyword});

      final result =
          BaseResponseModel.fromJson(response.data, DogModel.fromJson);
      if (result.data != null && result.data != {}) {
        return result.data;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<BreedModel>?> getBreeds() async {
    try {
      final response = await _dio.get("${ServiceUrls.serverName}/breeds");

      final result =
          BaseResponseModel.fromJson(response.data, BreedModel.fromJson);
      if (result.data != null && result.data != {}) {
        return result.data;
      } else {
        return null;
      }
    } catch (e) {
      return throw Exception(e);
    }
  }
}
