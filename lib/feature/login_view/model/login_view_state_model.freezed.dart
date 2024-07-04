// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_view_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginViewStateModel {
  TextEditingController get userNameController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  bool get showPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginViewStateModelCopyWith<LoginViewStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginViewStateModelCopyWith<$Res> {
  factory $LoginViewStateModelCopyWith(
          LoginViewStateModel value, $Res Function(LoginViewStateModel) then) =
      _$LoginViewStateModelCopyWithImpl<$Res, LoginViewStateModel>;
  @useResult
  $Res call(
      {TextEditingController userNameController,
      TextEditingController passwordController,
      bool showPassword});
}

/// @nodoc
class _$LoginViewStateModelCopyWithImpl<$Res, $Val extends LoginViewStateModel>
    implements $LoginViewStateModelCopyWith<$Res> {
  _$LoginViewStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNameController = null,
    Object? passwordController = null,
    Object? showPassword = null,
  }) {
    return _then(_value.copyWith(
      userNameController: null == userNameController
          ? _value.userNameController
          : userNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginViewStateModelImplCopyWith<$Res>
    implements $LoginViewStateModelCopyWith<$Res> {
  factory _$$LoginViewStateModelImplCopyWith(_$LoginViewStateModelImpl value,
          $Res Function(_$LoginViewStateModelImpl) then) =
      __$$LoginViewStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController userNameController,
      TextEditingController passwordController,
      bool showPassword});
}

/// @nodoc
class __$$LoginViewStateModelImplCopyWithImpl<$Res>
    extends _$LoginViewStateModelCopyWithImpl<$Res, _$LoginViewStateModelImpl>
    implements _$$LoginViewStateModelImplCopyWith<$Res> {
  __$$LoginViewStateModelImplCopyWithImpl(_$LoginViewStateModelImpl _value,
      $Res Function(_$LoginViewStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNameController = null,
    Object? passwordController = null,
    Object? showPassword = null,
  }) {
    return _then(_$LoginViewStateModelImpl(
      userNameController: null == userNameController
          ? _value.userNameController
          : userNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginViewStateModelImpl implements _LoginViewStateModel {
  const _$LoginViewStateModelImpl(
      {required this.userNameController,
      required this.passwordController,
      this.showPassword = false});

  @override
  final TextEditingController userNameController;
  @override
  final TextEditingController passwordController;
  @override
  @JsonKey()
  final bool showPassword;

  @override
  String toString() {
    return 'LoginViewStateModel(userNameController: $userNameController, passwordController: $passwordController, showPassword: $showPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginViewStateModelImpl &&
            (identical(other.userNameController, userNameController) ||
                other.userNameController == userNameController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userNameController, passwordController, showPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginViewStateModelImplCopyWith<_$LoginViewStateModelImpl> get copyWith =>
      __$$LoginViewStateModelImplCopyWithImpl<_$LoginViewStateModelImpl>(
          this, _$identity);
}

abstract class _LoginViewStateModel implements LoginViewStateModel {
  const factory _LoginViewStateModel(
      {required final TextEditingController userNameController,
      required final TextEditingController passwordController,
      final bool showPassword}) = _$LoginViewStateModelImpl;

  @override
  TextEditingController get userNameController;
  @override
  TextEditingController get passwordController;
  @override
  bool get showPassword;
  @override
  @JsonKey(ignore: true)
  _$$LoginViewStateModelImplCopyWith<_$LoginViewStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
