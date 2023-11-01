import 'package:flutter/material.dart';
import 'dart:ui';

// create a stateful widget
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

// create a state that consists of email, password, age, phonenumber, and country, state and city
class _SignupState extends State<Signup> {
  String email = '';
  String password = '';
  String age = '';
  String gender = 'Male';
  String country = '';
  String state = '';
  String address = '';

  // create a function that returns a widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // create an appbar
      // create a body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Foreign-Friend', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
              const SizedBox(height: 15),
              SizedBox(
                height: 40,
                child: TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  cursorHeight: 15,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    focusedBorder: OutlineInputBorder(),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                ),
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: TextField(
                  onChanged: (value) {
                    age = value;
                  },
                  cursorHeight: 15,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Age',
                    focusedBorder: OutlineInputBorder(),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // create dropdown button for gender
              SizedBox(
                height: 50,
                child: DropdownButtonHideUnderline(
                    child: DropdownButtonFormField<String>(
                      value: gender,
                      isExpanded: true,
                      items:const [
                        DropdownMenuItem(
                          value: "Male",
                          child: Text("Male"),
                        ),
                        DropdownMenuItem(
                          value: "Female",
                          child: Text("Female"),
                        ),
                      ],
                      decoration: const InputDecoration(labelStyle: TextStyle(color: Colors.black), border: OutlineInputBorder(), floatingLabelStyle: TextStyle(color: Colors.black), enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    )
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {
                          country = value;
                        },
                        cursorHeight: 15,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        cursorColor: Colors.black,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Country',
                          focusedBorder: OutlineInputBorder(),
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        onChanged: (value) {
                          state = value;
                        },
                        cursorHeight: 15,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        cursorColor: Colors.black,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'State',
                          focusedBorder: OutlineInputBorder(),
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),

                  ],
                )
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: TextField(
                  onChanged: (value) {
                    address = value;
                  },
                  cursorHeight: 15,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Address',
                    focusedBorder: OutlineInputBorder(),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  cursorHeight: 15,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    focusedBorder: OutlineInputBorder(),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // create a button to signup
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  side: const BorderSide(color: Colors.black, width: 5),
                ),
                onPressed: () { },
                child: const Text('Signup', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}