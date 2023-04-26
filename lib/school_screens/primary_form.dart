import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class StudentForm extends StatefulWidget {
  @override
  _StudentFormState createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  final _formKey = GlobalKey<FormState>();
  int _ppStudents = 0;
  int _class1Students = 0;
  int _class2Students = 0;
  int _class3Students = 0;
  int _class4Students = 0;
  int _class5Students = 0;
  int _totalStudents = 0;
  String _menuItem = '';
  String _signature = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Details')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Form(
            key: _formKey,
            child: Wrap(
              spacing: 16.w,
              runSpacing: 16.h,
              children: [
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'PP Students',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.sp,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the number of PP students';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _ppStudents = int.tryParse(value) ?? 0;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Class 1 Students',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.sp,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the number of Class 1 students';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _class1Students = int.tryParse(value) ?? 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Class 2 Students',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.sp,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the number of Class 2 students';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _class2Students = int.tryParse(value) ?? 0;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Class 3 Students',labelStyle: TextStyle(color: Colors.grey,fontSize: 15.sp),),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the number of Class 3 students';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _class3Students = int.tryParse(value) ?? 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Class 4 Students',labelStyle: TextStyle(color: Colors.grey,fontSize: 15.sp),),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the number of Class 4 students';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _class4Students = int.tryParse(value) ?? 0;
                          });
                        },
                      ),

                    ),
                    SizedBox(width: 20.w,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Class 5 Students',labelStyle: TextStyle(color: Colors.grey,fontSize: 15.sp),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the number of Class 5 students';
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
                  ],
                ),
                SizedBox(height: 40.h),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Total Number of Students',labelStyle: TextStyle(color: Colors.grey,fontSize: 15.sp),
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
                SizedBox(height: 40.h),
                TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(labelText: 'Menu Items',labelStyle: TextStyle(color: Colors.grey,fontSize: 15.sp),
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
            child: Text('Submit',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
