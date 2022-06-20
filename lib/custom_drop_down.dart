import 'package:flutter/cupertino.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'constant.dart';
import 'controller2.dart';

class CustomDropDown extends StatelessWidget {
  dynamic initialValue;
  final Function(dynamic)? onchange;
  bool? isaddNewMissionScreen=false;
  Image ?icon;

    CustomDropDown({
    Key? key,
      this.controller,
    required this.initialValue,
      this.icon,
    required this.onchange,
      this.isaddNewMissionScreen,
  }) : super(key: key);

  final MissionController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
       margin: EdgeInsets.symmetric(
          horizontal: 0.0.w, vertical: 15.h),
      padding: K.fixedPadding,
      decoration: K.TextFieldboxDecoration,
      child:  DropDown<dynamic>(
          items:  controller!.optionss,
        showUnderline: false,
          hint: Text("Select",),
          icon: icon,
          initialValue: initialValue.toString(),
          onChanged: onchange,
        isExpanded:true,
          isCleared: controller!.selectedOption.value == null,


      ),
    );
  }
}
