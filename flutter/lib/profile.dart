import 'package:flutter/material.dart';
import 'common/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG_COLOR, 
      appBar: AppBar(
        backgroundColor: BG_COLOR,
        title: Text('Profile', style: TextStyle(
                      fontSize: 25,
                      color: TEXT_COLOR,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Myanmar Khyay'))
      ),

      body: 
        ListView(
          children: [
            SizedBox(height: 100),
            CircleAvatar(
              radius: 80,
              // backgroundImage: AssetImage('assets/default_profile_image.jpg'), // You can replace this with the actual path or network image URL
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {
                    // Implement the logic for uploading a picture
                  },
                ),
              ],
            ),

            SizedBox(height: 20),

            Center(
              child: Text(
                'User Name',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                'Email Address',
                style: TextStyle(fontSize: 16),
              ),
            ),
        
            Center(
              child: Text(
                'Phone Number',
                style: TextStyle(fontSize: 16),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Implement the logic for editing user information
                  },
                ),
              ],
            ),
            SizedBox(height: 10),

            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(30),
              child: ElevatedButton(
                onPressed: () {
                  // Implement the logic for logging out
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: BUTTON_COLOR,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Text('Log Out',
                        style: TextStyle(
                        fontFamily: 'Myanmar Khyay',
                        color: TEXT_COLOR,
                        fontSize: 20,
                      ),
                    ),
              ),
            ),
          ],
      ),
    );
  
  }
}