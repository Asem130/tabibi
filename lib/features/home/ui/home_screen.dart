import 'package:flutter/material.dart';
import 'package:taqwa/features/home/ui/widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 16, 20, 26),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeTopBar(),
                ],
              ))),
    );
  }
}
