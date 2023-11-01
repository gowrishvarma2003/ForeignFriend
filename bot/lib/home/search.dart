import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _searchstate();
}

class _searchstate extends State<search> {
  //   initState(){
  //   super.initState();
  //   getDocumentIds();
  // }

  Widget build(BuildContext context) {
    // CollectionReference users = FirebaseFirestore.instance.collection('users').doc(widget.email).collection("add");
    List<String> documentIds = [];

    Future<List<String>> fetchData() async {
      List<String> documentIds = [];

      try {
        QuerySnapshot querySnapshot = await FirebaseFirestore.instance
            .collection('users') // Replace with your collection name
            .get();

        for (QueryDocumentSnapshot doc in querySnapshot.docs) {
          documentIds.add(doc.id);
        }
      } catch (e) {
        print("Error getting document IDs: $e");
      }

      return documentIds;
    }

    Future<void> getDocumentIds() async {
      List<String> ids = await fetchData();
      setState(() {
        documentIds = ids;
      });
      print(documentIds);
    }

    void initState() {
      super.initState();
      getDocumentIds();
    }

    Widget card() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children at the top
          children: [
            ClipOval(
                child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/profile.jpg',
                width: 40,
                height: 40,
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
                          "Gowrish",
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
                          "Usa",
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
                          "12-11-20024",
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget card2() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children at the top
          children: [
            ClipOval(
                child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/profile.jpg',
                width: 40,
                height: 40,
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
                          "Gowrish",
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
                          "Usa",
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
                          "12-11-20024",
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget card3() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children at the top
          children: [
            ClipOval(
                child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/profile.jpg',
                width: 40,
                height: 40,
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
                          "Gowrish",
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
                          "Usa",
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
                          "12-11-20024",
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget card4() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children at the top
          children: [
            ClipOval(
                child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/profile.jpg',
                width: 40,
                height: 40,
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
                          "Gowrish",
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
                          "Usa",
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
                          "12-11-20024",
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget card5() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children at the top
          children: [
            ClipOval(
                child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/profile.jpg',
                width: 40,
                height: 40,
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
                          "Gowrish",
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
                          "Usa",
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
                          "12-11-20024",
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget card6() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children at the top
          children: [
            ClipOval(
                child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/profile.jpg',
                width: 40,
                height: 40,
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
                          "Gowrish",
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
                          "Usa",
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
                          "12-11-20024",
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(80), // Increase the height of the app bar
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor:
                  Colors.black, // Set the background color to black
              centerTitle: true,
              title: Container(
                margin: EdgeInsets.only(top: 20),
                height: 40, // Decrease the height of the search bar
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    border: InputBorder.none,
                  ),
                ),
              ),
            )),
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              card(),
              card2(),
              card3(),
              card4(),
              card4(),
              card5(),
              card6()
            ]),
          ),
        ));
  }
}
