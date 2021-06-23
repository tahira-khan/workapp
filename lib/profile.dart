import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  // const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    int val = 0;
    return Scaffold(
      backgroundColor: Colors.orange[800],
      appBar: AppBar(
        title: Text('Profile Saya'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_sharp),
        elevation: 0,
        backgroundColor: Colors.orange[800],
      ),
      body: Container(
        margin: EdgeInsets.only(top: height * 0.04),
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.white),
        child: Column(
          children: [
            SizedBox(height: height * 0.09),
            Material(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              elevation: 10,
              child: Container(
                width: width * 0.7,
                height: height * 0.3,
                margin: EdgeInsets.only(
                    top: height * 0.04,
                    left: width * 0.05,
                    right: width * 0.05,
                    bottom: height * 0.04),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: height * 0.01),
                      width: width * 0.7,
                      child: title('Full Name'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height * 0.01),
                      width: width * 0.7,
                      child: subtitle('Dinar Daniswara'),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: height * 0.02, bottom: height * 0.02),
                      height: height * 0.002,
                      color: Colors.grey[300],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height * 0.01),
                      width: width * 0.7,
                      child: title('Mobile Number'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height * 0.01),
                      width: width * 0.7,
                      child: subtitle('08458486546456'),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: height * 0.02, bottom: height * 0.02),
                      height: height * 0.002,
                      color: Colors.grey[300],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height * 0.01),
                      width: width * 0.7,
                      child: title('Email Address'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height * 0.01),
                      width: width * 0.7,
                      child: subtitle('daniswara@gmail.com'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.04),
            Container(
              width: width * 0.7,
              child: Column(
                children: [
                  Text(
                      'You are accessing Blicil with your Allo Bank profile. There are two ways to edit it.',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 0.3)),
                  SizedBox(height: height * 0.04),
                  Text(
                      '- Go to home and tap Allo Explore. Tap the setting icon to edit',
                      style: TextStyle(fontSize: height * 0.022)),
                  Text('- Download Allo Bank and edit your profile in the app.',
                      style: TextStyle(fontSize: height * 0.022)),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              val = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          elevation: 50,
          currentIndex: 4,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.orange,
          selectedIconTheme: IconThemeData(color: Colors.orange),
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home_work, color: Colors.orange),
                icon: Icon(Icons.home_work, color: Colors.grey[300]),
                label: 'Berenda'),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.history_sharp, color: Colors.orange),
                icon: Icon(Icons.history_sharp, color: Colors.grey[300]),
                label: 'Riwayat'),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: AssetImage("images/art2.jpeg"),
                ),
                label: 'Allo Explore'),
            BottomNavigationBarItem(
                activeIcon:
                    Icon(Icons.calculate_outlined, color: Colors.orange),
                icon: Icon(Icons.calculate_outlined, color: Colors.grey[300]),
                label: 'Simulasi'),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.person, color: Colors.orange),
                icon: Icon(Icons.person, color: Colors.grey[300]),
                label: 'Profile'),
          ]),
    );
  }

  Widget title(String txt) {
    return Text(
      '$txt',
      style: TextStyle(fontWeight: FontWeight.bold),
      textAlign: TextAlign.left,
    );
  }

  Widget subtitle(String txt) {
    return Text(
      '$txt',
      textAlign: TextAlign.left,
    );
  }
}
