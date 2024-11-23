import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taqwa/core/di/depandency_injection.dart';
import 'package:taqwa/core/routing/app_router.dart';
import 'package:taqwa/doc_app.dart';

void main() async{
  // مشكلة التيكيست فى الباكديج
  await ScreenUtil.ensureScreenSize();
  setupGetit();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}