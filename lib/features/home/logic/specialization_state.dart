import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taqwa/features/home/data/models/sepcialization_reponse_model.dart';

part 'specialization_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loding() = Loading;
  const factory HomeState.success(
      SpecializationsResponseModel specializationsResponseModel) = Success;
  const factory HomeState.error({required String error}) = Error;
}
