
import 'package:flutter/material.dart';
import 'package:my_flutter_project/common/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_flutter_project/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({Key? key}) : super(key: key);

  @override
  State<GoalsPage> createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {

  Future<void> _showGoalsSnackbar() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('firstTime') == null) {
      prefs.setBool('firstTime', false);
      Get.snackbar("Check on your goals~","You can add, edit, and delete your goals here.",snackPosition: SnackPosition.BOTTOM, backgroundColor: CREAM_COLOR, colorText: TEXT_COLOR,);
    }
  }

  @override
  void initState() {
    super.initState();
    _showGoalsSnackbar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG_COLOR,
      appBar: AppBar(
        backgroundColor: BG_COLOR,
        elevation: 0,
        leading: 
          IconButton (
            padding: EdgeInsets.only(left: 10),
            icon: FaIcon(FontAwesomeIcons.plus, color: TEXT_COLOR,), 
            onPressed: () { 
              
            },
          ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(HomePage(), transition: Transition.rightToLeft);
            },
            icon: FaIcon(FontAwesomeIcons.chevronRight, color: TEXT_COLOR,), 
          ),
        
        ]),
    );
  }
}