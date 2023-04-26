import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class MonthStatus extends StatefulWidget {
  @override
  _MonthStatusState createState() => _MonthStatusState();
}

class _MonthStatusState extends State<MonthStatus> {
  // Define your state variables here
  String schoolName = '';
  String memoNumber = '';
  String expenses = '';
  int _oneA = 0;
  int _twoA = 0;
  int _threeA = 0;
  int _fourA = 0;
  int _fiveA = 0;
  int _sixA = 0;
  int _sevenA = 0;
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
        title: Text('Monthly Status'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Center(
                child: Text(
                  'Monthly Utilization Certificate',
                  style: TextStyle(fontSize: 20.sp,decoration: TextDecoration.underline,color: Colors.blue.shade900,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 50.h),
              Text(
                'School Name: $schoolName',
                style: TextStyle(fontSize: 18.sp),
              ),
              SizedBox(height: 20.h),
              Text(
                'Memo Number and Date : $memoNumber',
                style: TextStyle(fontSize: 18.sp),
              ),
              SizedBox(height: 20.h),
              Text(
                'Expenses for the month of : $expenses',
                style: TextStyle(fontSize: 18.sp),
              ),
              SizedBox(height: 50.h),
              Center(
                child: Text(
                  'N.B :- Pay Conversion cost of class V - Rs. 4.97/- per student',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17.sp),
                ),
              ),
              SizedBox(height: 50.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1. Total number of students serving cooked mid day meal :',
                    style: TextStyle(fontSize: 15.sp,color: Colors.grey.shade700),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the number';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _oneA = int.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2. Total Day\'s of  serving cooked mid day meal :',
                    style: TextStyle(fontSize: 15.sp,color: Colors.grey.shade700),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the number';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _twoA = int.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '3. Total expenses of serving cooked mid day meal :',
                    style: TextStyle(fontSize: 15.sp,color: Colors.grey.shade700),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the number';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _threeA = int.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 50.h),


              Center(
                child: Text(
                  'Rice Utilized',
                  style: TextStyle(fontSize: 20.sp,decoration: TextDecoration.underline,color: Colors.blue.shade900,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 50.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '4. Opening Balance (1st DAY OF MONTH) :',
                    style: TextStyle(fontSize: 15.sp,color: Colors.grey.shade700),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the number';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _fourA = int.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '5. Stock Received During the Month :',
                    style: TextStyle(fontSize: 15.sp,color: Colors.grey.shade700),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the number';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _fiveA = int.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '6. Stock utilized During the Month :',
                    style: TextStyle(fontSize: 15.sp,color: Colors.grey.shade700),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the number';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _sixA = int.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '7. Closing Balance (LAST DAY OF MONTH) :',
                    style: TextStyle(fontSize: 15.sp,color: Colors.grey.shade700),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the number';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _sevenA = int.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              Row(
                children: [
                  Expanded(child: Text('Submited By :-',style: TextStyle(fontSize: 18.sp,color: Colors.blue.shade900,decoration: TextDecoration.underline),)),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        // Update state variable on text input
                      },
                    ),
                  ),
                ],
              ),
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
