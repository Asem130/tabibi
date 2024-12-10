import 'package:flutter/material.dart';

import 'package:taqwa/features/home/data/models/sepcialization_reponse_model.dart';
import 'package:taqwa/features/home/ui/widgets/doctors_item.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, required this.doctorsList});
  final List<Doctors?>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: doctorsList?.length,
          itemBuilder: (context, index) => DoctorsItem(doctorModel: doctorsList?[index],)),
    );
  }
}
