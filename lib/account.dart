import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saya/profile.dart';

class Account extends StatefulWidget {
  //const Account({ Key? key }) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.orange[800],
      appBar: AppBar(
        title: Text('Profil'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_sharp),
        elevation: 0,
        backgroundColor: Colors.orange[800],
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: height * 0.04),
            width: width,
            height: height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white),
            child: Column(children: [
              SizedBox(height: height * 0.04),
              Container(
                child: Stack(
                  children: [
                    Material(
                      color: Colors.amber,
                      type: MaterialType.circle,
                      elevation: 10,
                      shadowColor: Colors.amber[50],
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 73,
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmFjZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                        ),
                      ),
                    ),
                    Positioned(
                      top: height * 0.15,
                      left: width * 0.25,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.orange[800],
                          child: Icon(Icons.edit_rounded, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.03),
              Text('Patricia Patrick',
                  style: TextStyle(fontSize: height * 0.03)),
              SizedBox(height: height * 0.05),
              Material(
                color: Colors.white,
                shadowColor: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                elevation: 10,
                child: Container(
                  width: width * 0.7,
                  height: height * 0.35,
                  margin: EdgeInsets.only(
                    top: height * 0.04,
                    left: width * 0.05,
                    right: width * 0.05,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Eachrow(height, width, 'Profil saya',
                              Icons.person_add_alt_1_outlined),
                          InkWell(
                              child: Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.orange[800]),
                              onTap: () {
                                setState(() {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Profile();
                                  }));
                                });
                              }),
                        ],
                      ),
                      divider(height, width),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Eachrow(height, width, 'Plafon Kredit',
                              Icons.monetization_on_sharp),
                          InkWell(
                              child: Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.orange[800]),
                              onTap: () {
                                setState(() {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Profile();
                                  }));
                                });
                              }),
                        ],
                      ),
                      divider(height, width),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Eachrow(height, width, 'History Pengajuan Kredit',
                              Icons.history_outlined),
                          InkWell(
                              child: Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.orange[800]),
                              onTap: () {
                                setState(() {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Profile();
                                  }));
                                });
                              }),
                        ],
                      ),
                      divider(height, width),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Eachrow(height, width, 'Pusat Bantuan',
                              Icons.question_answer_rounded),
                          InkWell(
                              child: Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.orange[800]),
                              onTap: () {
                                setState(() {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Profile();
                                  }));
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: height * 0.04,
                  left: width * 0.09,
                  right: width * 0.09,
                ),
                width: width,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.only(
                          top: height * 0.013, bottom: height * 0.013),
                      backgroundColor: Colors.orange[800],
                      side: BorderSide(color: Colors.orange[800]),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                  onPressed: () {},
                  child: Text('Log out',
                      style: TextStyle(
                          color: Colors.white, fontSize: height * 0.028)),
                ),
              ),
              //   SizedBox(height: height * 0.01)
            ])),
      ),
    );
  }

  Widget Eachrow(height, width, String text, IconData icon) {
    return Container(
      margin: EdgeInsets.only(top: height * 0.01),
      //width: width * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Icon(icon, color: Colors.grey, size: width * 0.062),
                SizedBox(width: width * 0.04),
                Text('$text',
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget divider(height, width) {
    return Container(
      margin: EdgeInsets.only(top: height * 0.02, bottom: height * 0.02),
      height: height * 0.002,
      color: Colors.grey[300],
    );
  }
}
