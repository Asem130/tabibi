import 'package:taqwa/core/networking/api_error_handler.dart';
import 'package:taqwa/core/networking/api_result.dart';
import 'package:taqwa/features/home/data/apis/home_api_services.dart';
import 'package:taqwa/features/home/data/models/sepcialization_reponse_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;
  HomeRepo(this._homeApiService);
  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
