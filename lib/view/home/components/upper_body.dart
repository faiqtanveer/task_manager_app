
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res/constants.dart';
import '../../../view_model/controller/home_controller.dart';
import 'custom_app_bar.dart';
import 'date_container.dart';

class UperBody extends StatelessWidget {
  UperBody({super.key});
  final controller=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: defaultPadding,),
        const CustomAppBar(),
        const SizedBox(height: defaultPadding,),
        SizedBox(
          height: 130,
          child: ListView.builder(
            itemCount: 7,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(bottom: 30),
            itemBuilder: (context, index) {
              return InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => controller.setIndex(index),
                child: DateContainer(index: index),
              );
            },),
        ),
      ],
    );
  }
}