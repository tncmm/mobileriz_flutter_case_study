// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DogModel _$DogModelFromJson(Map<String, dynamic> json) {
  return _DogModel.fromJson(json);
}

/// @nodoc
mixin _$DogModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get breedid => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogModelCopyWith<DogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogModelCopyWith<$Res> {
  factory $DogModelCopyWith(DogModel value, $Res Function(DogModel) then) =
      _$DogModelCopyWithImpl<$Res, DogModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int breedid,
      int age,
      String gender,
      String description,
      String size});
}

/// @nodoc
class _$DogModelCopyWithImpl<$Res, $Val extends DogModel>
    implements $DogModelCopyWith<$Res> {
  _$DogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? breedid = null,
    Object? age = null,
    Object? gender = null,
    Object? description = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breedid: null == breedid
          ? _value.breedid
          : breedid // ignore: cast_nullable_to_non_nullable
              as int,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DogModelImplCopyWith<$Res>
    implements $DogModelCopyWith<$Res> {
  factory _$$DogModelImplCopyWith(
          _$DogModelImpl value, $Res Function(_$DogModelImpl) then) =
      __$$DogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int breedid,
      int age,
      String gender,
      String description,
      String size});
}

/// @nodoc
class __$$DogModelImplCopyWithImpl<$Res>
    extends _$DogModelCopyWithImpl<$Res, _$DogModelImpl>
    implements _$$DogModelImplCopyWith<$Res> {
  __$$DogModelImplCopyWithImpl(
      _$DogModelImpl _value, $Res Function(_$DogModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? breedid = null,
    Object? age = null,
    Object? gender = null,
    Object? description = null,
    Object? size = null,
  }) {
    return _then(_$DogModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breedid: null == breedid
          ? _value.breedid
          : breedid // ignore: cast_nullable_to_non_nullable
              as int,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DogModelImpl implements _DogModel {
  const _$DogModelImpl(
      {required this.id,
      required this.name,
      required this.breedid,
      required this.age,
      required this.gender,
      required this.description,
      required this.size});

  factory _$DogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DogModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int breedid;
  @override
  final int age;
  @override
  final String gender;
  @override
  final String description;
  @override
  final String size;

  @override
  String toString() {
    return 'DogModel(id: $id, name: $name, breedid: $breedid, age: $age, gender: $gender, description: $description, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DogModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.breedid, breedid) || other.breedid == breedid) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, breedid, age, gender, description, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DogModelImplCopyWith<_$DogModelImpl> get copyWith =>
      __$$DogModelImplCopyWithImpl<_$DogModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DogModelImplToJson(
      this,
    );
  }
}

abstract class _DogModel implements DogModel {
  const factory _DogModel(
      {required final int id,
      required final String name,
      required final int breedid,
      required final int age,
      required final String gender,
      required final String description,
      required final String size}) = _$DogModelImpl;

  factory _DogModel.fromJson(Map<String, dynamic> json) =
      _$DogModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get breedid;
  @override
  int get age;
  @override
  String get gender;
  @override
  String get description;
  @override
  String get size;
  @override
  @JsonKey(ignore: true)
  _$$DogModelImplCopyWith<_$DogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
