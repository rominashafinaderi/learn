import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_model.freezed.dart';

part 'employee_model.g.dart';

@unfreezed
class EmployeeModel with _$EmployeeModel {
  factory EmployeeModel({
    required EmployeeEmployeeModel employee,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeModelFromJson(json);
}

@unfreezed
class EmployeeEmployeeModel with _$EmployeeEmployeeModel {
  factory EmployeeEmployeeModel({
    required String name,
    required int salary,
    required String married,
  }) = _EmployeeEmployeeModel;

  factory EmployeeEmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeEmployeeModelFromJson(json);
}
