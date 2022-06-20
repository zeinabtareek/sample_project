 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:get/get.dart';

import 'bill_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatefulWidget {

  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   @override
  void initState() {
     super.initState();
   }
  @override
  Widget build(BuildContext context) {
    VisualDensity.adaptivePlatformDensity;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return  MediaQuery(
      data:   const MediaQueryData(
      ),
      child:ScreenUtilInit(
        designSize:   Size (428,926),
        builder :(build ,Widget)=>   GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: BillScreen(),
        ),
      ),
    );
  }
}