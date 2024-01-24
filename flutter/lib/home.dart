// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_flutter_project/goals.dart';
import 'package:my_flutter_project/profile.dart';
import 'common/colors.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<bool> checkboxValues = [false, false, false];

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
            icon: FaIcon(FontAwesomeIcons.listOl, color: TEXT_COLOR,), 
            onPressed: () { 
              Get.to(GoalsPage(), transition: Transition.leftToRight);
            },
          ),
        actions: [
          IconButton(
            onPressed: () {
              
            },
            icon: FaIcon(FontAwesomeIcons.calendar, color: TEXT_COLOR,),
          ),
          IconButton(
            padding: EdgeInsets.only(right: 10),
            onPressed: () {
              Get.to(ProfilePage(), transition: Transition.rightToLeft);
            },
            icon: FaIcon(FontAwesomeIcons.user, color: TEXT_COLOR,),
          ),
        ],
      ),

      body: 
      ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: CREAM_COLOR,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Today\'s Goals',
                    style: TextStyle(
                      fontSize: 20,
                      color: TEXT_COLOR,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                CheckboxListTile(
                  title: Text('Item 1'),
                  value: checkboxValues[0],
                  onChanged: (bool? value) {
                    setState(() {
                      checkboxValues[0] = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Item 2'),
                  value: checkboxValues[1],
                  onChanged: (bool? value) {
                    setState(() {
                      checkboxValues[1] = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Item 3'),
                  value: checkboxValues[2],
                  onChanged: (bool? value) {
                    setState(() {
                      checkboxValues[2] = value!;
                    });
                  },
                ),
              ],
              
            ),
          ),

          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: CREAM_COLOR,
            ),
            child: const Center(child: Text('Entry A')),
          ),

          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: CREAM_COLOR,
            ),
            child: const Center(child: Text('Entry B')),
          ),

          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: CREAM_COLOR,
            ),
            child: const Center(child: Text('Entry C')),
          ),
        
            
            

          
        ],
      ),
    );
  }
}
