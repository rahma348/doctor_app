
import 'package:doctor_app/pages/Edit%20Profile.dart';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  //final Widget desktop;
  @override
  State<Profile> createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
    /*return Scaffold(
      body: Center(
        child: Text("$screenWidth, $screenHeight")),
    );*/
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1100) {
          return Scaffold(
            appBar: AppBar(
          title: const Text("Profile",
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start),
          actions: [
            TextButton(
              child: const Text("Edit",
                  style: TextStyle(
                      color: Color(0xffEE7666),
                      fontSize: 36,
                      fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EditProfile()));
              },
            ),
          ],
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Color(0xffFFFFFF), size: 30),
          backgroundColor: const Color(0xff0C8A7D)),
            body: Stack(
              children:[
                Container(color: const Color(0xff0C8A7D)),
                SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.all(10),
                        child: Image.asset("assets/img/Ellipse 36.png",width: 400,height: 400,)),
                    Card(
                      margin: const EdgeInsets.only(top: 20, right: 20, left: 10),
                      color: const Color(0xffFFFFFF),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const ListTile(
                        leading: Text("Name:",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        trailing: Text("Aya Mohamed",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 30,
                                fontWeight: FontWeight.normal)),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.only(top: 20, right: 20),
                      color: const Color(0xffFFFFFF),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const ListTile(
                        leading: Text("ID:",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        trailing: Text("2000500",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 30,
                                fontWeight: FontWeight.normal)),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.only(top: 20, right: 20),
                      color: const Color(0xffFFFFFF),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const ListTile(
                        leading: Text("Phone:",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        trailing: Text("+2011195252",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 30,
                                fontWeight: FontWeight.normal)),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.only(top: 20, right: 20),
                      color: const Color(0xffFFFFFF),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const ListTile(
                        leading: Text("E_mail:",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        trailing: Text("username@gmail.com",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 30,
                                fontWeight: FontWeight.normal)),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.only(top: 20, right: 20),
                      color: const Color(0xffFFFFFF),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const ListTile(
                        leading: Text("Role:",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        trailing: Text("Doctor",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 30,
                                fontWeight: FontWeight.normal)),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
          title: const Text("Profile",
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start),
          actions: [
            TextButton(
              child: const Text("Edit",
                  style: TextStyle(
                      color: Color(0xffEE7666),
                      fontSize: 36,
                      fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EditProfile()));
              },
            ),
          ],
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Color(0xffFFFFFF), size: 30),
          backgroundColor: const Color(0xff0C8A7D)),
            body: Stack(
              children:[
                Container(color: const Color(0xff0C8A7D)),
                Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Image.asset("assets/img/Ellipse 36.png")),
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(
                            margin:
                                const EdgeInsets.only(top: 20, right: 20, left: 10),
                            color: const Color(0xffFFFFFF),
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Wrap(children: [
                              const ListTile(
                                leading: Text("Name:",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center),
                                trailing: Text("Aya Mohamed",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 30,
                                        fontWeight: FontWeight.normal)),
                              ),
                            ]),
                          ),
                          
                          Card(
                            margin: const EdgeInsets.only(top: 20, right: 20),
                            color: const Color(0xffFFFFFF),
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: const ListTile(
                              leading: Text("Phone:",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center),
                              trailing: Text("+2011195252",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 30,
                                      fontWeight: FontWeight.normal)),
                            ),
                          ),
                          Card(
                            margin: const EdgeInsets.only(top: 20, right: 20),
                            color: const Color(0xffFFFFFF),
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: const ListTile(
                              leading: Text("E_mail:",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center),
                              trailing: Text("username@gmail.com",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 30,
                                      fontWeight: FontWeight.normal)),
                            ),
                          ),
                          Card(
                            margin: const EdgeInsets.only(top: 20, right: 20),
                            color: const Color(0xffFFFFFF),
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: const ListTile(
                              leading: Text("Role:",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center),
                              trailing: Text("Doctor",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 30,
                                      fontWeight: FontWeight.normal)),
                            ),
                          ),
                        ]),
                  )
                ]),
              ),
            ]),
          );
        }
      },
    );

    /*Scaffold(
      appBar: AppBar(
          title: const Text("Profile",
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start),
          actions: [
            TextButton(
              child: const Text("Edit",
                  style: TextStyle(
                      color: Color(0xffEE7666),
                      fontSize: 36,
                      fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EditProfile()));
              },
            ),
          ],
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Color(0xffFFFFFF), size: 30),
          backgroundColor: const Color(0xff0C8A7D)),
      body: Expanded(
        child: Stack(
          children: [
            Container(color: const Color(0xff0C8A7D)),
            Positioned(
                child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(children: [
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset("assets/img/Ellipse 36.png")),
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          margin: const EdgeInsets.only(
                              top: 20, right: 20, left: 10),
                          color: const Color(0xffFFFFFF),
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Wrap(children: [
                            const ListTile(
                              leading: Text("Name:",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center),
                              trailing: Text("Aya Mohamed",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 30,
                                      fontWeight: FontWeight.normal)),
                            ),
                          ]),
                        ),
                        Card(
                          margin: const EdgeInsets.only(top: 20, right: 20),
                          color: const Color(0xffFFFFFF),
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: const ListTile(
                            leading: Text("ID:",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                            trailing: Text("2000500",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal)),
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.only(top: 20, right: 20),
                          color: const Color(0xffFFFFFF),
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: const ListTile(
                            leading: Text("Phone:",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                            trailing: Text("+2011195252",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal)),
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.only(top: 20, right: 20),
                          color: const Color(0xffFFFFFF),
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: const ListTile(
                            leading: Text("E_mail:",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                            trailing: Text("username@gmail.com",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal)),
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.only(top: 20, right: 20),
                          color: const Color(0xffFFFFFF),
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: const ListTile(
                            leading: Text("Role:",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                            trailing: Text("Doctor",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal)),
                          ),
                        ),
                      ]),
                )
              ]),
            ))
          ],
        ),
      ),
    );*/
  }
}
