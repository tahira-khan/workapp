import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class History extends StatefulWidget {
  //const History({ Key? key }) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  AlertDialog alertDialog = AlertDialog();
  List title = List.generate(20, (index) => 'Abkilaski Electronik');

  List price = List.generate(20, (index) => 'Rp 6.500,000,-');
  List number = List.generate(20, (index) => 12403544505);
  @override
  void initState() {
    super.initState();
  }

  var sub = List.generate(18, (index) => 'Laptop Lenovo G40');
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
        body: Container(
          margin: EdgeInsets.only(top: height * 0.04),
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.white),
          child: ListView.builder(
              itemCount: title.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.only(
                      top: height * 0.05,
                      left: width * 0.05,
                      right: width * 0.05),
                  child: Container(
                    margin: EdgeInsets.only(
                        left: width * 0.02, right: width * 0.02),
                    child: ListTile(
                      contentPadding: EdgeInsets.only(top: height * 0.02),
                      leading: Image.asset(
                        'images/iconimg.png',
                        width: width * 0.09,
                        fit: BoxFit.cover,
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${title[index]}'),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.amber,
                                size: 15,
                              ),
                              Text('TTD PK',
                                  style: TextStyle(fontSize: height * 0.018))
                            ],
                          )
                        ],
                      ),
                      subtitle: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${sub[index]}',
                                  style: TextStyle(fontSize: height * 0.02)),
                              Text('${number[index]}',
                                  style: TextStyle(fontSize: height * 0.02)),
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Container(
                              width: width,
                              margin: EdgeInsets.only(top: width * 0.02),
                              child: Text('${price[index]}',
                                  style: TextStyle(
                                      color: Colors.orange[800],
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.4))),
                          Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              collapsedBackgroundColor: Colors.white,
                              trailing:
                                  Icon(Icons.ac_unit, color: Colors.white),
                              title: Container(
                                width: width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Lihat Update',
                                        style: TextStyle(
                                            fontSize: width * 0.03,
                                            color: Colors.black)),
                                    Icon(Icons.keyboard_arrow_down_sharp),
                                  ],
                                ),
                              ),
                              expandedAlignment: Alignment.center,
                              children: [
                                Column(
                                  children: [
                                    Divider(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Order: '),
                                        Text('9 April 2021',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black))
                                      ],
                                    ),
                                    SizedBox(height: height * 0.02),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Update: '),
                                        Text('12 April 2021',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black))
                                      ],
                                    ),
                                    SizedBox(height: height * 0.02),
                                    Container(
                                      width: width,
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(
                                                color: Colors.orange[800]),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                            )),
                                        onPressed: () {
                                          setState(() {
                                            AlertDialog alert = AlertDialog(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                              ),
                                              title: Text("Tandatangan",
                                                  textAlign: TextAlign.center),
                                              content: Text(
                                                  "This is my message. this is my message. This is my message.This is my message.This is my message.This is my message.This is my message.",
                                                  textAlign: TextAlign.center),
                                              actions: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    top: height * 0.04,
                                                    left: width * 0.2,
                                                    right: width * 0.2,
                                                  ),
                                                  width: width,
                                                  child: OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                            padding: EdgeInsets
                                                                .only(
                                                                    top: height *
                                                                        0.013,
                                                                    bottom:
                                                                        height *
                                                                            0.013),
                                                            backgroundColor:
                                                                Colors.orange[
                                                                    800],
                                                            side: BorderSide(
                                                                color: Colors
                                                                        .orange[
                                                                    800]),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          18.0),
                                                            )),
                                                    onPressed: () {},
                                                    child: Text('OK',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: height *
                                                                0.028)),
                                                  ),
                                                )
                                              ],
                                            );

                                            // show the dialog
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return alert;
                                              },
                                            );
                                          });
                                        },
                                        child: Text('Tandatangan Pk',
                                            style: TextStyle(
                                                color: Colors.orange[800])),
                                      ),
                                    ),
                                    SizedBox(height: height * 0.02),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}
