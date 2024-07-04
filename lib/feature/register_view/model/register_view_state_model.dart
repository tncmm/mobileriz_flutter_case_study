import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_view_state_model.freezed.dart';

@immutable
@freezed
class RegisterViewStateModel with _$RegisterViewStateModel {
  const factory RegisterViewStateModel({
    required TextEditingController userNameController,
    required TextEditingController passwordController,
    required TextEditingController emailController,
    required TextEditingController nameController,
    required TextEditingController surnameController,
    @Default(false) bool showPassword,
  }) = _RegisterViewStateModel;
}
