// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) {
  return _EmployeeModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeeModel {
  EmployeeEmployeeModel get employee => throw _privateConstructorUsedError;
  set employee(EmployeeEmployeeModel value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeModelCopyWith<EmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeModelCopyWith<$Res> {
  factory $EmployeeModelCopyWith(
          EmployeeModel value, $Res Function(EmployeeModel) then) =
      _$EmployeeModelCopyWithImpl<$Res, EmployeeModel>;
  @useResult
  $Res call({EmployeeEmployeeModel employee});

  $EmployeeEmployeeModelCopyWith<$Res> get employee;
}

/// @nodoc
class _$EmployeeModelCopyWithImpl<$Res, $Val extends EmployeeModel>
    implements $EmployeeModelCopyWith<$Res> {
  _$EmployeeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_value.copyWith(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeEmployeeModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeEmployeeModelCopyWith<$Res> get employee {
    return $EmployeeEmployeeModelCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmployeeModelImplCopyWith<$Res>
    implements $EmployeeModelCopyWith<$Res> {
  factory _$$EmployeeModelImplCopyWith(
          _$EmployeeModelImpl value, $Res Function(_$EmployeeModelImpl) then) =
      __$$EmployeeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmployeeEmployeeModel employee});

  @override
  $EmployeeEmployeeModelCopyWith<$Res> get employee;
}

/// @nodoc
class __$$EmployeeModelImplCopyWithImpl<$Res>
    extends _$EmployeeModelCopyWithImpl<$Res, _$EmployeeModelImpl>
    implements _$$EmployeeModelImplCopyWith<$Res> {
  __$$EmployeeModelImplCopyWithImpl(
      _$EmployeeModelImpl _value, $Res Function(_$EmployeeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$EmployeeModelImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeEmployeeModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeModelImpl implements _EmployeeModel {
  _$EmployeeModelImpl({required this.employee});

  factory _$EmployeeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeModelImplFromJson(json);

  @override
  EmployeeEmployeeModel employee;

  @override
  String toString() {
    return 'EmployeeModel(employee: $employee)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeModelImplCopyWith<_$EmployeeModelImpl> get copyWith =>
      __$$EmployeeModelImplCopyWithImpl<_$EmployeeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeModelImplToJson(
      this,
    );
  }
}

abstract class _EmployeeModel implements EmployeeModel {
  factory _EmployeeModel({required EmployeeEmployeeModel employee}) =
      _$EmployeeModelImpl;

  factory _EmployeeModel.fromJson(Map<String, dynamic> json) =
      _$EmployeeModelImpl.fromJson;

  @override
  EmployeeEmployeeModel get employee;
  set employee(EmployeeEmployeeModel value);
  @override
  @JsonKey(ignore: true)
  _$$EmployeeModelImplCopyWith<_$EmployeeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EmployeeEmployeeModel _$EmployeeEmployeeModelFromJson(
    Map<String, dynamic> json) {
  return _EmployeeEmployeeModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeeEmployeeModel {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  int get salary => throw _privateConstructorUsedError;
  set salary(int value) => throw _privateConstructorUsedError;
  String get married => throw _privateConstructorUsedError;
  set married(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeEmployeeModelCopyWith<EmployeeEmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEmployeeModelCopyWith<$Res> {
  factory $EmployeeEmployeeModelCopyWith(EmployeeEmployeeModel value,
          $Res Function(EmployeeEmployeeModel) then) =
      _$EmployeeEmployeeModelCopyWithImpl<$Res, EmployeeEmployeeModel>;
  @useResult
  $Res call({String name, int salary, String married});
}

/// @nodoc
class _$EmployeeEmployeeModelCopyWithImpl<$Res,
        $Val extends EmployeeEmployeeModel>
    implements $EmployeeEmployeeModelCopyWith<$Res> {
  _$EmployeeEmployeeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? salary = null,
    Object? married = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      salary: null == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int,
      married: null == married
          ? _value.married
          : married // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeEmployeeModelImplCopyWith<$Res>
    implements $EmployeeEmployeeModelCopyWith<$Res> {
  factory _$$EmployeeEmployeeModelImplCopyWith(
          _$EmployeeEmployeeModelImpl value,
          $Res Function(_$EmployeeEmployeeModelImpl) then) =
      __$$EmployeeEmployeeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int salary, String married});
}

/// @nodoc
class __$$EmployeeEmployeeModelImplCopyWithImpl<$Res>
    extends _$EmployeeEmployeeModelCopyWithImpl<$Res,
        _$EmployeeEmployeeModelImpl>
    implements _$$EmployeeEmployeeModelImplCopyWith<$Res> {
  __$$EmployeeEmployeeModelImplCopyWithImpl(_$EmployeeEmployeeModelImpl _value,
      $Res Function(_$EmployeeEmployeeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? salary = null,
    Object? married = null,
  }) {
    return _then(_$EmployeeEmployeeModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      salary: null == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int,
      married: null == married
          ? _value.married
          : married // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeEmployeeModelImpl implements _EmployeeEmployeeModel {
  _$EmployeeEmployeeModelImpl(
      {required this.name, required this.salary, required this.married});

  factory _$EmployeeEmployeeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeEmployeeModelImplFromJson(json);

  @override
  String name;
  @override
  int salary;
  @override
  String married;

  @override
  String toString() {
    return 'EmployeeEmployeeModel(name: $name, salary: $salary, married: $married)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeEmployeeModelImplCopyWith<_$EmployeeEmployeeModelImpl>
      get copyWith => __$$EmployeeEmployeeModelImplCopyWithImpl<
          _$EmployeeEmployeeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeEmployeeModelImplToJson(
      this,
    );
  }
}

abstract class _EmployeeEmployeeModel implements EmployeeEmployeeModel {
  factory _EmployeeEmployeeModel(
      {required String name,
      required int salary,
      required String married}) = _$EmployeeEmployeeModelImpl;

  factory _EmployeeEmployeeModel.fromJson(Map<String, dynamic> json) =
      _$EmployeeEmployeeModelImpl.fromJson;

  @override
  String get name;
  set name(String value);
  @override
  int get salary;
  set salary(int value);
  @override
  String get married;
  set married(String value);
  @override
  @JsonKey(ignore: true)
  _$$EmployeeEmployeeModelImplCopyWith<_$EmployeeEmployeeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
