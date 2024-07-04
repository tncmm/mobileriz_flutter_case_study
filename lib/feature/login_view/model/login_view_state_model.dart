import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_view_state_model.freezed.dart';

@immutable
@freezed
class LoginViewStateModel with _$LoginViewStateModel {
  const factory LoginViewStateModel({
    required TextEditingController userNameController,
    required TextEditingController passwordController,
    @Default(false) bool showPassword,
  }) = _LoginViewStateModel;
}
