import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Abhiram extends StatefulWidget {
  @override
  _AbhiramState createState() => _AbhiramState();
}

class _AbhiramState extends State<Abhiram> {
  bool ageEditing = false;
  bool emailEditing = false;
  bool genderEditing = false;
  bool countryEditing = false;
  bool stateEditing = false;
  bool addressEditing = false;

  File? _imageFile;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          color: Colors.black87,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              CircleAvatar(
                radius: 50,
                backgroundImage: _imageFile != null
                    ? FileImage(_imageFile!)
                    : const AssetImage('assets/Abhiram.jpg') as ImageProvider,
              ),
              Container(
                height: 30,
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                child: IconButton(
                  icon: Icon(Icons.camera_alt),
                  iconSize: 18,
                  color: Colors.white,
                  onPressed: () {
                    _pickImage();
                  },
                ),
              ),
              Text(
                'Abhiram',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 1.5,
              ),
            ),
          ),
        ),
        // ... (your existing code for the profile header)

        // Create a box that has detail string at left, detail value in the middle, and an edit button at the right
        _buildDetailRow("Age", "21", false, true, ageEditing, () {
          setState(() {
            ageEditing = !ageEditing;
          });
        }),
        _buildDetailRow(
            "Email", "AbhiramPabolu@outlook.com", false, true, emailEditing, () {
          setState(() {
            emailEditing = !emailEditing;
          });
        }),
        _buildDetailRow("Gender", "Male", false, true, genderEditing, () {
          setState(() {
            genderEditing = !genderEditing;
          });
        }),
        _buildDetailRow("Country", "India", false, true, countryEditing, () {
          setState(() {
            countryEditing = !countryEditing;
          });
        }),
        _buildDetailRow("State", "Pondi Cherry", false, true, stateEditing,
            () {
          setState(() {
            stateEditing = !stateEditing;
          });
        }),
        _buildDetailRow(
            "Address",
            "Pondi Cherry",
            true,
            true,
            addressEditing, () {
          setState(() {
            addressEditing = !addressEditing;
          });
        }),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value, bool overflow,
      bool isEditable, bool isEditing, Function() onEditPressed) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.1,
          ),
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 20),
          Text(
            label,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(), // Empty container takes up available space
          ),
          if (overflow && !isEditing)
            SizedBox(
              child: Text(
              value,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          if (!overflow && !isEditing)
            Text(
              value,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          if (overflow && isEditing)
            SizedBox(
              width: 150,
              child: TextField(
                onChanged: (value) {
                  // Store the values in firebase
                  print(value);
                },
                cursorHeight: 15,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          if (!overflow && isEditing)
            Container(
              width: 140,
              height: 40,
              child: TextField(
                onChanged: (value) {
                  // Store the values in firebase
                  print(value);
                },
                cursorHeight: 15,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          SizedBox(width: 10), // Add spacing between value and edit button
          if (isEditable)
            IconButton(
              icon: Icon(isEditing ? Icons.save : Icons.edit),
              iconSize: 13,
              onPressed: onEditPressed,
            ),
          SizedBox(
            width: 15,
          ), // Add spacing between edit button and the next detail
        ],
      ),
    );
  }
}
