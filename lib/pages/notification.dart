// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      
      child: Expanded(
        child: Scaffold(
            appBar: AppBar(
                title: 
                Center(
                  child: Text("Notification",
                      style: TextStyle(
                          color: Color(0xff0C8A7D),
                          fontSize: 33,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start),
                      
                ),
                
                bottom: TabBar(
                  indicatorColor: Color(0xFF0E725B),
                  splashBorderRadius: BorderRadius.circular(40),
                  tabAlignment:TabAlignment.center ,
                  dividerHeight: BorderSide.strokeAlignOutside,
                  dividerColor: Color.fromARGB(65, 204, 204, 204),        
                  unselectedLabelStyle: TextStyle(color:Color.fromARGB(65, 204, 204, 204),),
                  tabs: 
                  
                  [
                    
                  Tab(
                    child: Text("All notifications",
                    style: TextStyle(
                        color: Color(0xff0C8A7D),
                        fontSize: 24,
                        ),),
                  ),
                  Tab(
                    child: Text("Unread",
                    style: TextStyle(
                        color: Color(0xff0C8A7D),
                        fontSize: 24,
                        ),),
                  ),
                  
                ]
              ),
                elevation: 0.0,
                iconTheme:
                    const IconThemeData(color: Color(0xff0C8A7D), size: 27)),
            body: 
            TabBarView(children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "  Today",
                    style: TextStyle(
                      color: Color(0xFF0E725B),
                      fontSize: 24,
                    ),
                  ),
                    Column(children: [
                      ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: ElevatedButton(
                                  
                                  onPressed: () {},
                                  style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(Color.fromARGB(65, 204, 204, 204),)),
                                  child: Container(
                                    height: 75,

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          "assets/img/Vector.png",
                                          width: 50,
                                          height: 50,
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                          }),
                    ]),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "  Yesterday",
                    style: TextStyle(
                      color: Color(0xFF0E725B),
                      fontSize: 24,
                    ),
                  ),
                    Column(children: [
                      ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: ElevatedButton(
                                  
                                  onPressed: () {},
                                  style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(Color.fromARGB(65, 204, 204, 204),)),
                                  child: Container(
                                    height: 75,

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          "assets/img/Vector.png",
                                          width: 50,
                                          height: 50,
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                          }),
                    ]),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "  Past",
                    style: TextStyle(
                      color: Color(0xFF0E725B),
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                    Column(children: [
                      ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: ElevatedButton(
                                  
                                  onPressed: () {},
                                  style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(Color.fromARGB(65, 204, 204, 204),)),
                                  child: Container(
                                    height: 75,

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          "assets/img/Vector.png",
                                          width: 50,
                                          height: 50,
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                          }),
                    ]),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 10,
                    ),
                    Text(
                      "  Today",
                      style: TextStyle(
                        color: Color(0xFF0E725B),
                        fontSize: 24,
                      ),
                    ),
                    Column(children: [
                      ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: ElevatedButton(
                                  
                                  onPressed: () {},
                                  style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(Color.fromARGB(65, 204, 204, 204),)),
                                  child: Container(
                                    height: 75,

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          "assets/img/Vector.png",
                                          width: 50,
                                          height: 50,
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                          }),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                ],),
            ),
            ],),

            

            
            
      ),
      ),
    );
  }
}