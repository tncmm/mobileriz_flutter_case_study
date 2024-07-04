// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteStateModel {
  PageStateEnum get pageState => throw _privateConstructorUsedError;
  List<DogModel> get dogs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStateModelCopyWith<FavoriteStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateModelCopyWith<$Res> {
  factory $FavoriteStateModelCopyWith(
          FavoriteStateModel value, $Res Function(FavoriteStateModel) then) =
      _$FavoriteStateModelCopyWithImpl<$Res, FavoriteStateModel>;
  @useResult
  $Res call({PageStateEnum pageState, List<DogModel> dogs});
}

/// @nodoc
class _$FavoriteStateModelCopyWithImpl<$Res, $Val extends FavoriteStateModel>
    implements $FavoriteStateModelCopyWith<$Res> {
  _$FavoriteStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? dogs = null,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageStateEnum,
      dogs: null == dogs
          ? _value.dogs
          : dogs // ignore: cast_nullable_to_non_nullable
              as List<DogModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteStateModelImplCopyWith<$Res>
    implements $FavoriteStateModelCopyWith<$Res> {
  factory _$$FavoriteStateModelImplCopyWith(_$FavoriteStateModelImpl value,
          $Res Function(_$FavoriteStateModelImpl) then) =
      __$$FavoriteStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageStateEnum pageState, List<DogModel> dogs});
}

/// @nodoc
class __$$FavoriteStateModelImplCopyWithImpl<$Res>
    extends _$FavoriteStateModelCopyWithImpl<$Res, _$FavoriteStateModelImpl>
    implements _$$FavoriteStateModelImplCopyWith<$Res> {
  __$$FavoriteStateModelImplCopyWithImpl(_$FavoriteStateModelImpl _value,
      $Res Function(_$FavoriteStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? dogs = null,
  }) {
    return _then(_$FavoriteStateModelImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageStateEnum,
      dogs: null == dogs
          ? _value._dogs
          : dogs // ignore: cast_nullable_to_non_nullable
              as List<DogModel>,
    ));
  }
}

/// @nodoc

class _$FavoriteStateModelImpl implements _FavoriteStateModel {
  const _$FavoriteStateModelImpl(
      {this.pageState = PageStateEnum.START,
      final List<DogModel> dogs = const []})
      : _dogs = dogs;

  @override
  @JsonKey()
  final PageStateEnum pageState;
  final List<DogModel> _dogs;
  @override
  @JsonKey()
  List<DogModel> get dogs {
    if (_dogs is EqualUnmodifiableListView) return _dogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dogs);
  }

  @override
  String toString() {
    return 'FavoriteStateModel(pageState: $pageState, dogs: $dogs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateModelImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            const DeepCollectionEquality().equals(other._dogs, _dogs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pageState, const DeepCollectionEquality().hash(_dogs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteStateModelImplCopyWith<_$FavoriteStateModelImpl> get copyWith =>
      __$$FavoriteStateModelImplCopyWithImpl<_$FavoriteStateModelImpl>(
          this, _$identity);
}

abstract class _FavoriteStateModel implements FavoriteStateModel {
  const factory _FavoriteStateModel(
      {final PageStateEnum pageState,
      final List<DogModel> dogs}) = _$FavoriteStateModelImpl;

  @override
  PageStateEnum get pageState;
  @override
  List<DogModel> get dogs;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteStateModelImplCopyWith<_$FavoriteStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
