import 'package:dio/dio.dart';
import 'package:dog_adoption/core/model/response/base_response_model.dart';
import 'package:dog_adoption/core/provider/snackbar_provider.dart';
import 'package:dog_adoption/core/provider/token_provider.dart';
import 'package:dog_adoption/core/widgets/snack_bar_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef DioParams = ({
  bool? authRequired,
});

final dioProvider = Provider.family<Dio, DioParams>((ref, DioParams params) {
  BaseOptions baseOptions = BaseOptions(
    contentType: "application/json",
  );

  baseOptions.headers.addAll({
    'Authorization': params.authRequired == true
        ? "Bearer ${ref.watch(tokenProvider)}"
        : null
  });

  var dio = Dio(baseOptions)
    ..interceptors.add(InterceptorsWrapper(
      onError: (e, handler) async {
        if (e.response?.data != null) {
          final response = BaseResponseModel.fromJson(e.response?.data, null);

          if (response.message != null) {
            ref.read(snackBarProvider.notifier).showSnackBar(
                message: response.message, snackBarType: SnackBarType.error);
          }
        } else if (e.type == DioExceptionType.connectionError) {
          ref.read(snackBarProvider.notifier).showSnackBar(
              message: "Please check your connection and try again.",
              snackBarType: SnackBarType.error);
        } else if (e.type == DioExceptionType.connectionTimeout) {
          ref.read(snackBarProvider.notifier).showSnackBar(
              message: e.message ?? "Timeout",
              snackBarType: SnackBarType.error);
        } else if (e.type == DioExceptionType.badResponse) {
          ref.read(snackBarProvider.notifier).showSnackBar(
              message: e.message ?? "An error occured.",
              snackBarType: SnackBarType.error);
        }

        handler.next(e);
      },
    ));

  if (kDebugMode) {}

  return dio;
});
