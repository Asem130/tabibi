import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taqwa/features/home/data/models/sepcialization_reponse_model.dart';
import 'package:taqwa/features/home/ui/widgets/doctor_speciality_item.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key, required this.specializationList});
  final List<SpecializationsData?> specializationList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => DoctorSpecialityItem(
          itemIndex: index,
          specializationsData: specializationList[index],
        ),
        itemCount: 8,
      ),
    );
  }
}
