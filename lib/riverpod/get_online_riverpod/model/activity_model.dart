import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_model.freezed.dart';

part 'activity_model.g.dart';

@unfreezed
class ActivityModel with _$ActivityModel {
  factory ActivityModel({
    required String key,
    required String activity,
    required String type,
    required int participants,
    required double price,
  }) = _ActivityModel;

  factory ActivityModel.fromJson(Map<String, dynamic> json) => _$ActivityModelFromJson(json);
}
