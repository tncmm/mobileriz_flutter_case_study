import 'package:dio/dio.dart';
import 'package:dog_adoption/core/constants/service_urls.dart';
import 'package:dog_adoption/core/model/response/base_response_model.dart';
import 'package:dog_adoption/core/model/user_model/user_model.dart';
import 'package:dog_adoption/core/provider/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginService = Provider((ref) => LoginService(ref));

class LoginService {
  Ref ref;
  final Dio _dio;
  LoginService(this.ref) : _dio = ref.watch(dioProvider((authRequired: false)));

  Future<UserModel?> login(String password, String usename) async {
    try {
      final response = await _dio.post('${ServiceUrls.serverName}/login',
          data: {"username": usename, "password": password});
      final result =
          BaseResponseModel.fromJson(response.data, UserModel.fromJson);
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
