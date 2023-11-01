import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _loginstate();
}

class _loginstate extends State<login> {
  String email = "";
  String password = "";

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> storeDataWithCustomId(
      String customId, Map<String, dynamic> data) async {
    try {
      // Provide the custom ID while adding the document
      await firestore.collection('users').doc(customId).set(data);
      print('Data stored successfully!');
    } catch (e) {
      print('Error storing data: $e');
    }
  }

  void loginfun() async {
    print("hii");
    // final detailes =
    // await FirebaseFirestore.instance.collection('users').doc(email).get();
    String customId = email;
    Map<String, dynamic> data = {
      'email': email, // John Doe
      'password': password,
    };
    storeDataWithCustomId(customId, data);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 180, left: 20, right: 20),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              "Foreign friend",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Container(
            child: TextField(
              onChanged: ((value) => email = value),
              decoration: InputDecoration(
                hintText: "Email",
                fillColor: Colors.black,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              onChanged: ((value) => password = value),
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                fillColor: Colors.black,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width,
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.black),
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => {loginfun()},
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                      onPressed: (() => {}), child: Text("Sign up"))
                ],
              ))
        ]),
      ),
    );
  }
}
