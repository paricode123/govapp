import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class MuniDaily extends StatefulWidget {
  @override
  _MuniDailyState createState() => _MuniDailyState();
}

class _MuniDailyState extends State<MuniDaily> {
  String _selectedOption = 'Choose one';
  List<bool> _isChecked = List.filled(31, false);
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
      appBar: AppBar(
        title: Text('Muni Daily Report'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Center(
            child: DropdownButton<String>(
              value: _selectedOption,
              items: <String>[
                'Choose one',
                'School1',
                'School2',
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
            ),
          ),
          SizedBox(height: 20.h),
          if (_selectedOption == 'School1')_buildSchool1Page(),
          if (_selectedOption == 'School2')_buildSchool2Page(),
        ],
      ),
    );
  }

  Widget _buildSchool1Page() {
    return Expanded(
      child: Padding(
        padding:  EdgeInsets.all(8.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Container(
                height: 600.w,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.w,
                  ),
                ),
                child: Center(
                  child: Text(
                    'School 1 Report',
                    style: TextStyle(
                      fontSize: 24.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _signatureImage == null
                      ? Container(
                    height: 90.h,
                    width: 200.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.r)
                    ),
                    child: Center(
                      child: Text('No signature selected'),
                    ),
                  )
                      : Container(
                    height: 180.h,
                    width: 200.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Image.file(
                      File(_signatureImage!.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                  TextButton(
                    onPressed: _pickSignatureImage,
                    child: Row(
                      children: [
                        Text('Add'),
                        SizedBox(width: 5.w,),
                        Icon(Icons.add_a_photo_outlined),
                      ],
                    ),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      overlayColor: MaterialStateProperty.all<Color>(Colors.blueAccent.withOpacity(0.2)),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 18.w),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                          side: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  )

                ],
              ),
              SizedBox(height: 32.h),
              Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // your function here
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 60.w),
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade700),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                      ),
                    ),
                  )


              ),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSchool2Page() {
    return Expanded(
      child: Padding(
        padding:  EdgeInsets.all(8.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Container(
                height: 600.w,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.w,
                  ),
                ),
                child: Center(
                  child: Text(
                    'School 2 Report',
                    style: TextStyle(
                      fontSize: 24.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _signatureImage == null
                      ? Container(
                    height: 90.h,
                    width: 200.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.r)
                    ),
                    child: Center(
                      child: Text('No signature selected'),
                    ),
                  )
                      : Container(
                    height: 180.h,
                    width: 200.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Image.file(
                      File(_signatureImage!.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                  TextButton(
                    onPressed: _pickSignatureImage,
                    child: Row(
                      children: [
                        Text('Add'),
                        SizedBox(width: 5.w,),
                        Icon(Icons.add_a_photo_outlined),
                      ],
                    ),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      overlayColor: MaterialStateProperty.all<Color>(Colors.blueAccent.withOpacity(0.2)),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 18.w),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                          side: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  )

                ],
              ),
              SizedBox(height: 32.h),
              Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // your function here
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 60.w),
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade700),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                      ),
                    ),
                  )


              ),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}

