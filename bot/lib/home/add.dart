import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class add extends StatefulWidget {
  var email;
  add({required this.email});
  @override
  State<StatefulWidget> createState() => _addstate();
}

String contery = "";
String state = "";
String city = "";
String tocontery = "";
String tostate = "";
String tocity = "";
String date = "";
String discription = "";

Widget country_input() {
  return Container(
    child: Container(
      // height: 100,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: TextFormField(
        onChanged: (number) {
          contery = number;
        },
        decoration: InputDecoration(
          labelText: "Country",
          fillColor: Colors.black,
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          // errorText: validate && (phonenumber?.isEmpty ?? true)
          //     ? "This Field cannot be empty"
          //     :null
        ),
      ),
    ),
  );
}

Widget state_input() {
  return Container(
    child: Container(
      // height: 100,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: TextFormField(
        onChanged: (statename) {
          state = statename;
        },
        decoration: InputDecoration(
          labelText: "State",
          fillColor: Colors.black,
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          // errorText: validate && (phonenumber?.isEmpty ?? true)
          //     ? "This Field cannot be empty"
          //     :null
        ),
      ),
    ),
  );
}

Widget city_input() {
  return Container(
    child: Container(
      // height: 100,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: TextFormField(
        onChanged: (cityname) {
          city = cityname;
        },
        decoration: InputDecoration(
          labelText: "City",
          fillColor: Colors.black,
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          // errorText: validate && (phonenumber?.isEmpty ?? true)
          //     ? "This Field cannot be empty"
          //     :null
        ),
      ),
    ),
  );
}

Widget to_country_input() {
  return Container(
    child: Container(
      // height: 100,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: TextFormField(
        onChanged: (number) {
          tocontery = number;
        },
        decoration: InputDecoration(
          labelText: "Country",
          fillColor: Colors.black,
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          // errorText: validate && (phonenumber?.isEmpty ?? true)
          //     ? "This Field cannot be empty"
          //     :null
        ),
      ),
    ),
  );
}

Widget to_state_input() {
  return Container(
    child: Container(
      // height: 100,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: TextFormField(
        onChanged: (statename) {
          tostate = statename;
        },
        decoration: InputDecoration(
          labelText: "State",
          fillColor: Colors.black,
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          // errorText: validate && (phonenumber?.isEmpty ?? true)
          //     ? "This Field cannot be empty"
          //     :null
        ),
      ),
    ),
  );
}

Widget to_city_input() {
  return Container(
    child: Container(
      // height: 100,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: TextFormField(
        onChanged: (cityname) {
          tocity = cityname;
        },
        decoration: InputDecoration(
          labelText: "City",
          fillColor: Colors.black,
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          // errorText: validate && (phonenumber?.isEmpty ?? true)
          //     ? "This Field cannot be empty"
          //     :null
        ),
      ),
    ),
  );
}

Widget discription_input() {
  return Container(
    child: Container(
      // height: 100,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: TextField(
        maxLines: 5,
        onChanged: (detailes) {
          discription = detailes;
        },
        decoration: InputDecoration(
          labelText: "Description",
          fillColor: Colors.black,
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          // errorText: validate && (phonenumber?.isEmpty ?? true)
          //     ? "This Field cannot be empty"
          //     :null
        ),
      ),
    ),
  );
}

Widget date_input() {
  return Container(
    child: Container(
      // height: 100,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: TextFormField(
        onChanged: (date) {
          date = date;
        },
        decoration: InputDecoration(
          labelText: "DD-MM-YYYY",
          fillColor: Colors.black,
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          // errorText: validate && (phonenumber?.isEmpty ?? true)
          //     ? "This Field cannot be empty"
          //     :null
        ),
      ),
    ),
  );
}

class _addstate extends State<add> {
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users').doc(widget.email).collection("add");

    Future<void> _register() {
    return users
        .add({
        'countery': contery, // John Doe
        'state': state,
        'city': city,
        'tocountery': tocontery,
        'tostate': tostate,
        'tocity': tocity,
        'date': date,
        'discription': discription
    })
        .then((value) => print("success"),
    )
        .catchError((error) => print("Failed to add user: $error"));
    return Future.value();
  }

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

    void uplode() async {
      print(widget.email);
      print("hii");
      // final detailes =
      // await FirebaseFirestore.instance.collection('users').doc(email).get();
      String customId = contery;
      Map<String, dynamic> data = {
        'countery': contery, // John Doe
        'state': state,
        'city': city,
        'tocountery': tocontery,
        'tostate': tostate,
        'tocity': tocity,
        'date': date,
        'discription': discription
      };
      storeDataWithCustomId(customId, data);
    }

    Widget button() {
      return Container(
          margin: EdgeInsets.only(left: 5, right: 5, top: 30),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: TextButton(
                style: TextButton.styleFrom(
                    // padding: EdgeInsets.symmetric(horizontal: 200),
                    backgroundColor: Colors.black),
                onPressed: () {
                  _register();
                },
                child: Text(
                  "Upload",
                  style: TextStyle(
                    backgroundColor: Colors.black,
                    color: Colors.white,
                  ),
                )),
          ));
    }

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(25),
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Container(
            child: Text("From:", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          ),
          country_input(),
          state_input(),
          city_input(),
          Container(
            child: Text("To:", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          ),
          to_country_input(),
          to_state_input(),
          to_city_input(),
          date_input(),
          Container(
            child: Text("Add some to discription about your journey:"),
          ),
          discription_input(),
          button()
        ]),
      ),
    ));
  }
}
