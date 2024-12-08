import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taqwa/features/home/data/repos/specialization_repo.dart';
import 'package:taqwa/features/home/logic/specialization_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(HomeState.initial());
  final HomeRepo _homeRepo;
  void getSpecialization() async {
    emit(const HomeState.loding());
    final response = await _homeRepo.getSpecialization();
    response.when(success: (specializationsResponseModel) {
      emit(HomeState.success(specializationsResponseModel));
    }, failure: (error) {
      emit(HomeState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
