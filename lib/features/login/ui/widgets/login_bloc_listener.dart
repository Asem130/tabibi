import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taqwa/core/helpers/extensions.dart';
import 'package:taqwa/core/routing/routes.dart';
import 'package:taqwa/core/theming/colors.dart';
import 'package:taqwa/core/theming/styles.dart';
import 'package:taqwa/features/auth/logic/login_cubit/login_cubit.dart';
import 'package:taqwa/features/auth/logic/login_cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
        listenWhen: (previous, current) =>
            current is Loding || current is Success || current is Error,
        listener: (context, state) {
          state.whenOrNull(
            loding: () {
              showDialog(
                context: context,
                builder: (context) => const Center(
                  child: CircularProgressIndicator(
                    color: ColorsManger.mainBlue,
                  ),
                ),
              );
            },
            success: (loginResponse) {
              context.pop();
              context.pushNamed(Routes.homeScreen);
            },
            error: (error) {
              context.pop();
              setupErrorState(context, error);
            },
          );
        },
        child: const SizedBox.square());
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: ColorsManger.red,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
              onPressed: (context.pop),
              child: Text(
                'Go it',
                style: TextStyles.font14BlueSemiBold,
              ))
        ],
      ),
    );
  }
}
