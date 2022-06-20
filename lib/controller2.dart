import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MissionController extends GetxController {

  Rx<List<dynamic>> selectedOptionList = Rx<List<dynamic>>([]);
  var selectedOption = ''.obs;
  List<dynamic> options = ["المهمه ١", "المهمه ٢", "المهمه ٣", "المهمه ٤"];
  List<dynamic> optionss = ['Select',"Texas ", "New York", "Florida", "	California","Texas ", "New York", "Florida", "	California"];

  List<dynamic> AddNewMissionScreen = ["فردي", "في محموعه", ];


}