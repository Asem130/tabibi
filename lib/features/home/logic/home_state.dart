import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taqwa/core/networking/api_error_model.dart';
import 'package:taqwa/features/home/data/models/sepcialization_reponse_model.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  // specialization
  const factory HomeState.specializationLoding() = SpecializationLoading;
  const factory HomeState.specializationSuccess(
      List<SpecializationsData?>? specializationList) = SpecializationSuccess;
  const factory HomeState.specializationError(ApiErrorModel apiErrorModel) =
      SpecializationError;

  //  Doctors
  const factory HomeState.doctorSuccess(List<Doctors?>? doctorsList) =
      DoctorsSuccess;
  const factory HomeState.doctorError() = DoctorsError;
}
