import 'package:dio/dio.dart';
import 'package:dog_adoption/core/constants/service_urls.dart';
import 'package:dog_adoption/core/model/dog_model/dog_model.dart';
import 'package:dog_adoption/core/model/response/base_response_model.dart';
import 'package:dog_adoption/core/provider/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteService = Provider((ref) => FavoriteService(ref));

class FavoriteService {
  Ref ref;
  final Dio _dio;
  FavoriteService(this.ref)
      : _dio = ref.watch(dioProvider((authRequired: true)));

  Future<List<DogModel>?> getAllFavoriteDogs() async {
    try {
      final response = await _dio.get(
        "${ServiceUrls.serverName}/favorites",
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

  Future<bool> addDogToFavorite(int id) async {
    try {
      final response = await _dio
          .post("${ServiceUrls.serverName}/favorites", data: {"dog_id": id});

      if (response.statusCode.toString() != "200") {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
