import 'dart:io' as io;
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});
  @override
  State<EditProfile> createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
  Uint8List? _image;
  io.File? selectedImage;
  late String path;
  String? name;
  String? id;
  String? email;
  String? phone;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> formstate1 = GlobalKey();
  GlobalKey<FormState> formstate2 = GlobalKey();
  GlobalKey<FormState> formstate3 = GlobalKey();
  GlobalKey<FormState> formstate4 = GlobalKey();
  GlobalKey<FormState> formstate5 = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  Widget bottomSheet() {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const Text("Profile photo",
            style: TextStyle(
                color: Color(0xff000000),
                fontSize: 32,
                fontWeight: FontWeight.normal)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
          MaterialButton(
            child: const Column(
              children: [
              Icon(
                Icons.camera_alt,
                size: 70,
                color: Color(0xff0C8A7D),
              ),
              Text("Camera",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal
              ))
            ]),
            onPressed: () {
              _pickImageFromCamera();
            },
          ),
          MaterialButton(
            child: const Column(children: [
              Icon(Icons.image, size: 70, color: Color(0xff0C8A7D)),
              Text("Gallery",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal
              ))
            ]),
            onPressed: () {
              _pickImageFromGallery();
            },
          ),
        ]),
      ]),
    );
  }

//Gallery
  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedImage = io.File(returnImage.path);
      _image = io.File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  //Camera
  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedImage = io.File(returnImage.path);
      _image = io.File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  void Saveimage(path) async {
    SharedPreferences saveimage = await SharedPreferences.getInstance();
    saveimage.setString("imagepath", path);
  }

  Future<void> LoadImage() async {
    SharedPreferences saveimage = await SharedPreferences.getInstance();
    setState(() {
      _image = saveimage.getString("imagepath") as Uint8List?;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F6FC),
      appBar: AppBar(
        backgroundColor: const Color(0xffF1F6FC),
        title: const Text("Edit Profile",
            style: TextStyle(
                color: Color(0xff0C8A7D),
                fontSize: 36,
                fontWeight: FontWeight.normal)),
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Color(0xff0C8A7D), size: 30),
      ),
      body: Expanded(
        child: Center(
            child: ListView(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 50, left: 50),
                children: [
              Column(
                children: [
                // Profile image
                _image != null
                    ? CircleAvatar(
                        radius: 90, backgroundImage: MemoryImage(_image!))
                    : const CircleAvatar(
                        radius: 90,
                        backgroundColor: Color(0xffF1F6FC),
                        backgroundImage: AssetImage("assets/img/profile.png")),
                // Change photo button
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: TextButton(
                      child: const Text("Change Photo",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 32,
                              fontWeight: FontWeight.normal)),
                      onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: const Color(0xffF1F6FC),
                            context: context,
                            builder: ((builder) => bottomSheet()));
                      }),
                ),
                // Name input field
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    key: formstate1,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Required";
                        }
                      },
                      onSaved: (Val) {
                        name = Val;
                      },
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      cursorColor: const Color(0xff0C8A7D),
                      decoration: const InputDecoration(
                        labelText: "User Name",
                        labelStyle: TextStyle(
                            color: Color(0xff0C8A7D),
                            fontSize: 32,
                            fontWeight: FontWeight.normal),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff0C8A7D)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff0C8A7D)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ),
                ),
                // ID input field
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    key: formstate2,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Required";
                        }
                      },
                      onSaved: (Val) {
                        id = Val;
                      },
                      controller: idController,
                      keyboardType: TextInputType.visiblePassword,
                      cursorColor: const Color(0xff0C8A7D),
                      decoration: const InputDecoration(
                        labelText: "ID",
                        labelStyle: TextStyle(
                            color: Color(0xff0C8A7D),
                            fontSize: 32,
                            fontWeight: FontWeight.normal),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff0C8A7D)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff0C8A7D)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ),
                ),
                // E-mail input field
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    key: formstate3,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Required";
                        }
                      },
                      onSaved: (Val) {
                        email = Val;
                      },
                      controller: emailController,
                      cursorColor: const Color(0xff0C8A7D),
                      decoration: const InputDecoration(
                        labelText: "E_mail",
                        labelStyle: TextStyle(
                            color: Color(0xff0C8A7D),
                            fontSize: 32,
                            fontWeight: FontWeight.normal),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff0C8A7D)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff0C8A7D)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ),
                ),
                // phone input field
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    key: formstate4,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Required";
                        }
                      },
                      onSaved: (Val) {
                        phone = Val;
                      },
                      controller: phoneController,
                      keyboardType: TextInputType.number,
                      cursorColor: const Color(0xff0C8A7D),
                      decoration: const InputDecoration(
                        labelText: "Phone",
                        labelStyle: TextStyle(
                            color: Color(0xff0C8A7D),
                            fontSize: 32,
                            fontWeight: FontWeight.normal),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff0C8A7D)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff0C8A7D)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                    alignment: Alignment.center,
                    child: MaterialButton(
                      color: const Color(0xff0C8A7D),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "Save",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        Saveimage(_image);
                        if (formstate1.currentState!.validate() &&
                            formstate2.currentState!.validate() &&
                            formstate3.currentState!.validate() &&
                            formstate4.currentState!.validate() &&
                            formstate5.currentState!.validate()) {
                          formstate1.currentState!.save();
                          formstate2.currentState!.save();
                          formstate3.currentState!.save();
                          formstate4.currentState!.save();
                          formstate5.currentState!.save();
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: MaterialButton(
                      color: const Color(0xff0C8A7D),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ])
              ])
            ])),
      ),
    );
  }
}
