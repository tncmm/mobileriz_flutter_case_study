// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_view_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterViewStateModel {
  TextEditingController get userNameController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;
  TextEditingController get nameController =>
      throw _privateConstructorUsedError;
  TextEditingController get surnameController =>
      throw _privateConstructorUsedError;
  bool get showPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterViewStateModelCopyWith<RegisterViewStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterViewStateModelCopyWith<$Res> {
  factory $RegisterViewStateModelCopyWith(RegisterViewStateModel value,
          $Res Function(RegisterViewStateModel) then) =
      _$RegisterViewStateModelCopyWithImpl<$Res, RegisterViewStateModel>;
  @useResult
  $Res call(
      {TextEditingController userNameController,
      TextEditingController passwordController,
      TextEditingController emailController,
      TextEditingController nameController,
      TextEditingController surnameController,
      bool showPassword});
}

/// @nodoc
class _$RegisterViewStateModelCopyWithImpl<$Res,
        $Val extends RegisterViewStateModel>
    implements $RegisterViewStateModelCopyWith<$Res> {
  _$RegisterViewStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNameController = null,
    Object? passwordController = null,
    Object? emailController = null,
    Object? nameController = null,
    Object? surnameController = null,
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
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      nameController: null == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      surnameController: null == surnameController
          ? _value.surnameController
          : surnameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterViewStateModelImplCopyWith<$Res>
    implements $RegisterViewStateModelCopyWith<$Res> {
  factory _$$RegisterViewStateModelImplCopyWith(
          _$RegisterViewStateModelImpl value,
          $Res Function(_$RegisterViewStateModelImpl) then) =
      __$$RegisterViewStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController userNameController,
      TextEditingController passwordController,
      TextEditingController emailController,
      TextEditingController nameController,
      TextEditingController surnameController,
      bool showPassword});
}

/// @nodoc
class __$$RegisterViewStateModelImplCopyWithImpl<$Res>
    extends _$RegisterViewStateModelCopyWithImpl<$Res,
        _$RegisterViewStateModelImpl>
    implements _$$RegisterViewStateModelImplCopyWith<$Res> {
  __$$RegisterViewStateModelImplCopyWithImpl(
      _$RegisterViewStateModelImpl _value,
      $Res Function(_$RegisterViewStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNameController = null,
    Object? passwordController = null,
    Object? emailController = null,
    Object? nameController = null,
    Object? surnameController = null,
    Object? showPassword = null,
  }) {
    return _then(_$RegisterViewStateModelImpl(
      userNameController: null == userNameController
          ? _value.userNameController
          : userNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      nameController: null == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      surnameController: null == surnameController
          ? _value.surnameController
          : surnameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegisterViewStateModelImpl implements _RegisterViewStateModel {
  const _$RegisterViewStateModelImpl(
      {required this.userNameController,
      required this.passwordController,
      required this.emailController,
      required this.nameController,
      required this.surnameController,
      this.showPassword = false});

  @override
  final TextEditingController userNameController;
  @override
  final TextEditingController passwordController;
  @override
  final TextEditingController emailController;
  @override
  final TextEditingController nameController;
  @override
  final TextEditingController surnameController;
  @override
  @JsonKey()
  final bool showPassword;

  @override
  String toString() {
    return 'RegisterViewStateModel(userNameController: $userNameController, passwordController: $passwordController, emailController: $emailController, nameController: $nameController, surnameController: $surnameController, showPassword: $showPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterViewStateModelImpl &&
            (identical(other.userNameController, userNameController) ||
                other.userNameController == userNameController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.emailController, emailController) ||
                other.emailController == emailController) &&
            (identical(other.nameController, nameController) ||
                other.nameController == nameController) &&
            (identical(other.surnameController, surnameController) ||
                other.surnameController == surnameController) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userNameController,
      passwordController,
      emailController,
      nameController,
      surnameController,
      showPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterViewStateModelImplCopyWith<_$RegisterViewStateModelImpl>
      get copyWith => __$$RegisterViewStateModelImplCopyWithImpl<
          _$RegisterViewStateModelImpl>(this, _$identity);
}

abstract class _RegisterViewStateModel implements RegisterViewStateModel {
  const factory _RegisterViewStateModel(
      {required final TextEditingController userNameController,
      required final TextEditingController passwordController,
      required final TextEditingController emailController,
      required final TextEditingController nameController,
      required final TextEditingController surnameController,
      final bool showPassword}) = _$RegisterViewStateModelImpl;

  @override
  TextEditingController get userNameController;
  @override
  TextEditingController get passwordController;
  @override
  TextEditingController get emailController;
  @override
  TextEditingController get nameController;
  @override
  TextEditingController get surnameController;
  @override
  bool get showPassword;
  @override
  @JsonKey(ignore: true)
  _$$RegisterViewStateModelImplCopyWith<_$RegisterViewStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
