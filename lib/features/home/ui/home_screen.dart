import 'package:flutter/material.dart';
import 'package:taqwa/core/helpers/space_vector.dart';
import 'package:taqwa/features/home/ui/widgets/blue_doctors_continer.dart';
import 'package:taqwa/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:taqwa/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:taqwa/features/home/ui/widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(),
              BlueDoctorsContiner(),
              verticalSpace(16),
              DoctorSpecialitySeeAll(),
              verticalSpace(16),
              DoctorSpecialityListView()
            ],
          ),
        ),
      ),
    );
  }
}
