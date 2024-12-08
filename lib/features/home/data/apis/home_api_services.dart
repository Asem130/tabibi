import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:taqwa/core/networking/api_constants.dart';
import 'package:taqwa/features/home/data/apis/home_api_constants.dart';
import 'package:taqwa/features/home/data/models/sepcialization_reponse_model.dart';

part'home_api_services.g.dart';

@RestApi(baseUrl : ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationsResponseModel> getSpecialization();
} 