import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taqwa/core/helpers/extensions.dart';
import 'package:taqwa/features/home/data/models/sepcialization_reponse_model.dart';
import 'package:taqwa/features/home/data/repos/specialization_repo.dart';
import 'package:taqwa/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(HomeState.initial());
  List<SpecializationsData?>? specializationList = [];
  final HomeRepo _homeRepo;
  void getSpecialization() async {
    emit(const HomeState.specializationLoding());
    final response = await _homeRepo.getSpecialization();
    response.when(success: (specializationsResponseModel) {
      specializationList =
          specializationsResponseModel.specializationDataList ?? [];

      getDoctorsList(specializationId: specializationList?.first?.id);
      emit(HomeState.specializationSuccess(specializationList));
    }, failure: (errorHandler) {
      emit(HomeState.specializationError(errorHandler));
    });
  }

  getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationListById(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorSuccess(doctorsList));
    } else {
      emit(HomeState.doctorError());
    }
  }

  getDoctorsListBySpecializationListById(specilaizationId) {
    return specializationList
        ?.firstWhere((specilaization) => specilaization?.id == specilaizationId)
        ?.doctorsList;
  }
}
