import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taqwa/core/di/depandency_injection.dart';
import 'package:taqwa/core/routing/routes.dart';
import 'package:taqwa/features/home/logic/specialization_cubit.dart';
import 'package:taqwa/features/home/ui/home_screen.dart';
import 'package:taqwa/features/login/logic/login_cubit/login_cubit.dart';
import 'package:taqwa/features/login/ui/screens/login_sceen.dart';
import 'package:taqwa/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:taqwa/features/register/logic/register_cubit/register_cubit.dart';
import 'package:taqwa/features/register/ui/register_screen.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings) {
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
      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<RegisterCubit>(
                create: (context) => getIt<RegisterCubit>(),
                child: const RegisterScreen()));
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => HomeCubit(getIt())
                    ..getSpecialization(), // ركز هنا انا هنا مسجلتش ال HomeCubit فى ال Di  وعملت كد
                  child: const HomeScreen(),

                  //
                ));
      default:
        return null;
    }
  }
}
