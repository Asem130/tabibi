import 'package:taqwa/features/auth/data/models/login_request_body.dart';
import 'package:taqwa/features/auth/data/repos/login_repo.dart';
import 'package:taqwa/features/auth/logic/login_cubit/login_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loding());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
    });
  }
}
