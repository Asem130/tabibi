import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taqwa/features/home/data/models/sepcialization_reponse_model.dart';
import 'package:taqwa/features/home/logic/home_cubit.dart';
import 'package:taqwa/features/home/ui/widgets/specilazations_list/speciality_item.dart';

class SpecialityListView extends StatefulWidget {
  const SpecialityListView({super.key, required this.specializationList});
  final List<SpecializationsData?> specializationList;

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  int selectedSpecialzationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedSpecialzationIndex = index;
            });
            context.read<HomeCubit>().getDoctorsList(
                specializationId: widget.specializationList[index]?.id);
          },
          child: SpecialityItem(
            selectedIndex: selectedSpecialzationIndex,
            itemIndex: index,
            specializationsData: widget.specializationList[index],
          ),
        ),
        itemCount: 8,
      ),
    );
  }
}
