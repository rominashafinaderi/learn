// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeModelImpl _$$EmployeeModelImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeModelImpl(
      employee: EmployeeEmployeeModel.fromJson(
          json['employee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EmployeeModelImplToJson(_$EmployeeModelImpl instance) =>
    <String, dynamic>{
      'employee': instance.employee,
    };

_$EmployeeEmployeeModelImpl _$$EmployeeEmployeeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeEmployeeModelImpl(
      name: json['name'] as String,
      salary: (json['salary'] as num).toInt(),
      married: json['married'] as String,
    );

Map<String, dynamic> _$$EmployeeEmployeeModelImplToJson(
        _$EmployeeEmployeeModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'salary': instance.salary,
      'married': instance.married,
    };
