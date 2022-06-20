import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constant.dart';
import 'controller2.dart';
import 'custom_drop_down.dart';

class BillScreen extends StatelessWidget {
  final controller = Get.put(MissionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: K.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: K.width,
              color: K.orangeColor,
              child: const Center(
                child: Text('Patron information',style: TextStyle(
                  fontSize:40,
                  fontWeight: FontWeight.w700
                ),),
              ),
            ),
            SizedBox(
                 height: 170,
                child: Image.asset('assets/images/Picture1.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Patron Number',style: TextStyle(fontSize: 40),),

                SizedBox(width: 10,),
                SizedBox(
                  height: 70,
                  width: 170,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    cursorColor: K.mainColor,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: K.mainColor , width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: K.mainColor),
                        ),
                        counterText: '',
                        hintStyle:
                        TextStyle(color: K.mainColor, fontSize: 20.0)),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text('First Name',style: TextStyle(fontSize: 40),),
                SizedBox(width: 10,),
                SizedBox(
                  height: 70,
                  width: 170,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    cursorColor: K.mainColor,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: K.mainColor , width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: K.mainColor),
                        ),
                        counterText: '',hintText: 'Zeinab',
                        hintStyle:
                        TextStyle(color: K.mainColor, fontSize: 20.0)),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),

                SizedBox(width: 60,),

                Text('Last Name',style: TextStyle(fontSize: 40),),

                SizedBox(width: 10,),

                SizedBox(
                  height: 70,
                  width: 170,
                  child: TextField(

                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    cursorColor: K.mainColor,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: K.mainColor , width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: K.mainColor),
                        ),
                        counterText: '',hintText: 'Tarek',
                        hintStyle: TextStyle(color: K.mainColor, fontSize: 20.0)),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text('Street Address',style: TextStyle(fontSize: 40),),
                SizedBox(width: 10,),
                SizedBox(
                  height: 70,
                  width: 170,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    cursorColor: K.mainColor,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: K.mainColor , width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: K.mainColor),
                        ),
                        counterText: '',
                        hintStyle:
                        TextStyle(color: K.mainColor, fontSize: 20.0)),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
              ],
            ),
            CustomDropDown(
              controller: controller,
              initialValue: controller.optionss[0],
              onchange: (v) {
                controller.selectedOption.value = v!;
              },
            ),
            const Text('fnjfbhjfhfhbf'),
          ],
        ),
      ),
    );
  }
}
