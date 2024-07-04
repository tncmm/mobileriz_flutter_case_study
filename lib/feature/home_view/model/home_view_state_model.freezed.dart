// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeViewStateModel {
  TextEditingController get searchController =>
      throw _privateConstructorUsedError;
  BreedModel? get selectedBreed => throw _privateConstructorUsedError;
  int? get selectedAge => throw _privateConstructorUsedError;
  PageStateEnum get pageState => throw _privateConstructorUsedError;
  List<DogModel> get dogs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeViewStateModelCopyWith<HomeViewStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewStateModelCopyWith<$Res> {
  factory $HomeViewStateModelCopyWith(
          HomeViewStateModel value, $Res Function(HomeViewStateModel) then) =
      _$HomeViewStateModelCopyWithImpl<$Res, HomeViewStateModel>;
  @useResult
  $Res call(
      {TextEditingController searchController,
      BreedModel? selectedBreed,
      int? selectedAge,
      PageStateEnum pageState,
      List<DogModel> dogs});

  $BreedModelCopyWith<$Res>? get selectedBreed;
}

/// @nodoc
class _$HomeViewStateModelCopyWithImpl<$Res, $Val extends HomeViewStateModel>
    implements $HomeViewStateModelCopyWith<$Res> {
  _$HomeViewStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchController = null,
    Object? selectedBreed = freezed,
    Object? selectedAge = freezed,
    Object? pageState = null,
    Object? dogs = null,
  }) {
    return _then(_value.copyWith(
      searchController: null == searchController
          ? _value.searchController
          : searchController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      selectedBreed: freezed == selectedBreed
          ? _value.selectedBreed
          : selectedBreed // ignore: cast_nullable_to_non_nullable
              as BreedModel?,
      selectedAge: freezed == selectedAge
          ? _value.selectedAge
          : selectedAge // ignore: cast_nullable_to_non_nullable
              as int?,
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

  @override
  @pragma('vm:prefer-inline')
  $BreedModelCopyWith<$Res>? get selectedBreed {
    if (_value.selectedBreed == null) {
      return null;
    }

    return $BreedModelCopyWith<$Res>(_value.selectedBreed!, (value) {
      return _then(_value.copyWith(selectedBreed: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeViewStateModelImplCopyWith<$Res>
    implements $HomeViewStateModelCopyWith<$Res> {
  factory _$$HomeViewStateModelImplCopyWith(_$HomeViewStateModelImpl value,
          $Res Function(_$HomeViewStateModelImpl) then) =
      __$$HomeViewStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController searchController,
      BreedModel? selectedBreed,
      int? selectedAge,
      PageStateEnum pageState,
      List<DogModel> dogs});

  @override
  $BreedModelCopyWith<$Res>? get selectedBreed;
}

/// @nodoc
class __$$HomeViewStateModelImplCopyWithImpl<$Res>
    extends _$HomeViewStateModelCopyWithImpl<$Res, _$HomeViewStateModelImpl>
    implements _$$HomeViewStateModelImplCopyWith<$Res> {
  __$$HomeViewStateModelImplCopyWithImpl(_$HomeViewStateModelImpl _value,
      $Res Function(_$HomeViewStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchController = null,
    Object? selectedBreed = freezed,
    Object? selectedAge = freezed,
    Object? pageState = null,
    Object? dogs = null,
  }) {
    return _then(_$HomeViewStateModelImpl(
      searchController: null == searchController
          ? _value.searchController
          : searchController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      selectedBreed: freezed == selectedBreed
          ? _value.selectedBreed
          : selectedBreed // ignore: cast_nullable_to_non_nullable
              as BreedModel?,
      selectedAge: freezed == selectedAge
          ? _value.selectedAge
          : selectedAge // ignore: cast_nullable_to_non_nullable
              as int?,
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

class _$HomeViewStateModelImpl implements _HomeViewStateModel {
  const _$HomeViewStateModelImpl(
      {required this.searchController,
      this.selectedBreed = null,
      this.selectedAge = null,
      this.pageState = PageStateEnum.START,
      final List<DogModel> dogs = const []})
      : _dogs = dogs;

  @override
  final TextEditingController searchController;
  @override
  @JsonKey()
  final BreedModel? selectedBreed;
  @override
  @JsonKey()
  final int? selectedAge;
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
    return 'HomeViewStateModel(searchController: $searchController, selectedBreed: $selectedBreed, selectedAge: $selectedAge, pageState: $pageState, dogs: $dogs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewStateModelImpl &&
            (identical(other.searchController, searchController) ||
                other.searchController == searchController) &&
            (identical(other.selectedBreed, selectedBreed) ||
                other.selectedBreed == selectedBreed) &&
            (identical(other.selectedAge, selectedAge) ||
                other.selectedAge == selectedAge) &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            const DeepCollectionEquality().equals(other._dogs, _dogs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchController, selectedBreed,
      selectedAge, pageState, const DeepCollectionEquality().hash(_dogs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeViewStateModelImplCopyWith<_$HomeViewStateModelImpl> get copyWith =>
      __$$HomeViewStateModelImplCopyWithImpl<_$HomeViewStateModelImpl>(
          this, _$identity);
}

abstract class _HomeViewStateModel implements HomeViewStateModel {
  const factory _HomeViewStateModel(
      {required final TextEditingController searchController,
      final BreedModel? selectedBreed,
      final int? selectedAge,
      final PageStateEnum pageState,
      final List<DogModel> dogs}) = _$HomeViewStateModelImpl;

  @override
  TextEditingController get searchController;
  @override
  BreedModel? get selectedBreed;
  @override
  int? get selectedAge;
  @override
  PageStateEnum get pageState;
  @override
  List<DogModel> get dogs;
  @override
  @JsonKey(ignore: true)
  _$$HomeViewStateModelImplCopyWith<_$HomeViewStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
