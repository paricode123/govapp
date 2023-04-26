import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HigherForm extends StatefulWidget {
  const HigherForm({Key? key}) : super(key: key);

  @override
  State<HigherForm> createState() => _HigherFormState();
}

class _HigherFormState extends State<HigherForm> {
  final _formKey = GlobalKey<FormState>();
  int _class5Students = 0;
  int _class6Students = 0;
  int _class7Students = 0;
  int _class8Students = 0;
  int _totalStudents = 0;
  String _menuItem = '';
  String _signature = '';
  PickedFile? _signatureImage;

  Future<void> _pickSignatureImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      _signatureImage = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Details')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Wrap(
              spacing: 16.0,
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Class 5 Students',labelStyle: TextStyle(color: Colors.grey,fontSize: 15),),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the number of class 5 students';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _class5Students = int.tryParse(value) ?? 0;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Class 6 Students',labelStyle: TextStyle(color: Colors.grey,fontSize: 15),),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the number of Class 6 students';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _class6Students = int.tryParse(value) ?? 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Class 7 Students',labelStyle: TextStyle(color: Colors.grey,fontSize: 15),),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the number of Class 7 students';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _class7Students = int.tryParse(value) ?? 0;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Class 8 Students',labelStyle: TextStyle(color: Colors.grey,fontSize: 15),),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the number of Class 8 students';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _class8Students = int.tryParse(value) ?? 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Total Number of Students',labelStyle: TextStyle(color: Colors.grey,fontSize: 15),
                    ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the total number of students';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _totalStudents = int.tryParse(value) ?? 0;
                    });
                  },
                ),
                SizedBox(height: 40),
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(labelText: 'Menu Items',labelStyle: TextStyle(color: Colors.grey,fontSize: 15),

                    ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a menu item';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _menuItem = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              // TODO: Implement form submission logic
              print('Form submitted successfully');
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Submit',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
