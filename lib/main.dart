import 'package:flutter/material.dart';
import 'package:taqwa/core/di/depandency_injection.dart';
import 'package:taqwa/core/routing/app_router.dart';
import 'package:taqwa/doc_app.dart';

void main() {
  setupGetit();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
