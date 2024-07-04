// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dog_detail_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DogDetailStateModel {
  PageStateEnum get pageState => throw _privateConstructorUsedError;
  DogModel? get dog => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DogDetailStateModelCopyWith<DogDetailStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogDetailStateModelCopyWith<$Res> {
  factory $DogDetailStateModelCopyWith(
          DogDetailStateModel value, $Res Function(DogDetailStateModel) then) =
      _$DogDetailStateModelCopyWithImpl<$Res, DogDetailStateModel>;
  @useResult
  $Res call({PageStateEnum pageState, DogModel? dog});

  $DogModelCopyWith<$Res>? get dog;
}

/// @nodoc
class _$DogDetailStateModelCopyWithImpl<$Res, $Val extends DogDetailStateModel>
    implements $DogDetailStateModelCopyWith<$Res> {
  _$DogDetailStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? dog = freezed,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageStateEnum,
      dog: freezed == dog
          ? _value.dog
          : dog // ignore: cast_nullable_to_non_nullable
              as DogModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DogModelCopyWith<$Res>? get dog {
    if (_value.dog == null) {
      return null;
    }

    return $DogModelCopyWith<$Res>(_value.dog!, (value) {
      return _then(_value.copyWith(dog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DogDetailStateModelImplCopyWith<$Res>
    implements $DogDetailStateModelCopyWith<$Res> {
  factory _$$DogDetailStateModelImplCopyWith(_$DogDetailStateModelImpl value,
          $Res Function(_$DogDetailStateModelImpl) then) =
      __$$DogDetailStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageStateEnum pageState, DogModel? dog});

  @override
  $DogModelCopyWith<$Res>? get dog;
}

/// @nodoc
class __$$DogDetailStateModelImplCopyWithImpl<$Res>
    extends _$DogDetailStateModelCopyWithImpl<$Res, _$DogDetailStateModelImpl>
    implements _$$DogDetailStateModelImplCopyWith<$Res> {
  __$$DogDetailStateModelImplCopyWithImpl(_$DogDetailStateModelImpl _value,
      $Res Function(_$DogDetailStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? dog = freezed,
  }) {
    return _then(_$DogDetailStateModelImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageStateEnum,
      dog: freezed == dog
          ? _value.dog
          : dog // ignore: cast_nullable_to_non_nullable
              as DogModel?,
    ));
  }
}

/// @nodoc

class _$DogDetailStateModelImpl implements _DogDetailStateModel {
  const _$DogDetailStateModelImpl(
      {this.pageState = PageStateEnum.START, this.dog = null});

  @override
  @JsonKey()
  final PageStateEnum pageState;
  @override
  @JsonKey()
  final DogModel? dog;

  @override
  String toString() {
    return 'DogDetailStateModel(pageState: $pageState, dog: $dog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DogDetailStateModelImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.dog, dog) || other.dog == dog));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState, dog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DogDetailStateModelImplCopyWith<_$DogDetailStateModelImpl> get copyWith =>
      __$$DogDetailStateModelImplCopyWithImpl<_$DogDetailStateModelImpl>(
          this, _$identity);
}

abstract class _DogDetailStateModel implements DogDetailStateModel {
  const factory _DogDetailStateModel(
      {final PageStateEnum pageState,
      final DogModel? dog}) = _$DogDetailStateModelImpl;

  @override
  PageStateEnum get pageState;
  @override
  DogModel? get dog;
  @override
  @JsonKey(ignore: true)
  _$$DogDetailStateModelImplCopyWith<_$DogDetailStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
