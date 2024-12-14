import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taqwa/core/helpers/constants.dart';
import 'package:taqwa/core/routing/app_router.dart';
import 'package:taqwa/core/routing/routes.dart';
import 'package:taqwa/core/theming/colors.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:isLoggedInUser? Routes.homeScreen:Routes.loginScreen,
        onGenerateRoute: appRouter.generateRoutes,
        title: 'Doc App',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: ColorsManager.mainBlue,
        ),
      ),
    );
  }
}
