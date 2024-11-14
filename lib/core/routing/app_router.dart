import 'package:flutter/material.dart';
import 'package:taqwa/core/routing/routes.dart';
import 'package:taqwa/features/auth/ui/screens/login_sceen.dart';
import 'package:taqwa/features/onboarding/ui/screens/onboarding_screen.dart';

class AppRouter {
  Route generateRoutes(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginSceen());
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
