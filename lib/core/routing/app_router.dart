import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taqwa/core/di/depandency_injection.dart';
import 'package:taqwa/core/routing/routes.dart';
import 'package:taqwa/features/auth/logic/login_cubit/login_cubit.dart';
import 'package:taqwa/features/auth/ui/screens/login_sceen.dart';
import 'package:taqwa/features/onboarding/ui/screens/onboarding_screen.dart';

class AppRouter {
  Route generateRoutes(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
      //متنساش ال <>.
        return MaterialPageRoute(
            builder: (_) => BlocProvider<LoginCubit>(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginSceen()));
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('No Route'),
                  ),
                ));
    }
  }
}
