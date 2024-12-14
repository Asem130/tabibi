import 'package:flutter/material.dart';
import 'package:taqwa/core/di/depandency_injection.dart';
import 'package:taqwa/core/helpers/constants.dart';
import 'package:taqwa/core/helpers/extensions.dart';
import 'package:taqwa/core/helpers/shared_pref_helper.dart';
import 'package:taqwa/core/routing/app_router.dart';
import 'package:taqwa/doc_app.dart';


void main() {
 WidgetsFlutterBinding.ensureInitialized();
  setupGetit();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if (userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
