import 'package:bot/home/chat.dart';
import 'package:bot/home/chat2.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _homepagestate();
}

class _homepagestate extends State<homepage> {
  Widget build(BuildContext context) {
    Widget card() {
      return GestureDetector(
        onTap: (() => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatApp()))
            }),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align children at the top
            children: [
              ClipOval(
                  child: Container(
                child: Image.asset(
                  'assets/Abhiram.jpg',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              )),
              SizedBox(
                  width:
                      20), // Add spacing between the profile picture and details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Name:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            "Abhiram",
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Going to",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            "USA",
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Date",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            "01-12-2024",
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget card2() {
      return GestureDetector(
        onTap: (() => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatApp2()))
            }),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align children at the top
            children: [
              ClipOval(
                  child: Container(
                child: Image.asset(
                  'assets/Pranav.jpg',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              )),
              SizedBox(
                  width:
                      20), // Add spacing between the profile picture and details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Name:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            "Pranav",
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Going to",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            "Monalia",
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Date",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            "25-12-2023",
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        title: Container(
          // padding: EdgeInsets.only(bottom: 20),
          margin: EdgeInsets.only(left: 20),
          child: Text(
            "Your connections",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Container(
        child: Column(children: [
          card(),
          card2(),
        ]),
      ),
    );
  }
}
