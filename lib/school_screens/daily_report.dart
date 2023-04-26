import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled23/school_screens/primary_form.dart';

import 'higher_form.dart';

class DailyPage extends StatefulWidget {
  @override
  _DailyPageState createState() => _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  String _selectedOption = 'Choose one';
  String _subSelectedOption = 'Choose one';
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
        title: Text('Daily Report'),
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
                'Primary',
                'Higher Secondary',
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                  _subSelectedOption = 'Choose one';
                });
              },
            ),
          ),
          SizedBox(height: 20.h),
          if (_selectedOption == 'Primary' ||
              _selectedOption == 'Higher Secondary')
            Center(
              child: DropdownButton<String>(
                value: _subSelectedOption,
                items: _selectedOption == 'Primary'
                    ? <String>[
                  'Choose one',
                  'PM1',
                  'Midday Meal1',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList()
                    : <String>[
                  'Choose one',
                  'PM2',
                  'Midday Meal2',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _subSelectedOption = value!;
                  });
                },
              ),
            ),
          if (_subSelectedOption == 'PM1') _buildPM1Page(),
          if (_subSelectedOption == 'Midday Meal1') _buildMiddayMeal1Page(),
          if (_subSelectedOption == 'PM2') _buildPM2Page(),
          if (_subSelectedOption == 'Midday Meal2') _buildMiddayMeal2Page(),
        ],
      ),
    );
  }

  Widget _buildPM1Page() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'PM-Poshan Shakti Nirman(Monthly Statement)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Name of the school',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Disc',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Month',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: Text(
                      'Year',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                'Name of the Municipality',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Ward No.',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'No. of children as per student attendance Register',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(height: 20.h),
              DataTable(
                columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Date',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Holiday',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ],
                rows: List<DataRow>.generate(
                  31,
                      (index) => DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Padding(
                          padding: EdgeInsets.all(8.w),
                          child: Row(
                            children: [
                              Text('Day'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text('${index + 1}'),
                            ],
                          ),
                        ),
                      ),
                      DataCell(
                        Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => StudentForm()),
                              );
                            },
                            child: Row(
                              children: [
                                Text(
                                  'Add',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.add_circle_outline_outlined,
                                    size: 25,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      DataCell(
                        CheckboxListTile(
                          value: _isChecked[index],
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked[index] = value!;
                            });
                            if (_isChecked[index]) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Holiday"),
                                    content: Text("This day is a holiday."),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("OK"),
                                      ),
                                    ],
                                  );
                                },
                              ).then((_) {
                                setState(() {
                                  _isChecked[index] = true;
                                });
                              });
                            }
                          },
                          title: Text(""),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                    ],
                  ),
                ).toList(),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _signatureImage == null
                      ? Container(
                    height: 100.h,
                    width: 250.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                      child: Text('No signature selected'),
                    ),
                  )
                      : Container(
                    height: 200.h,
                    width: 250.w,
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
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  )

                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPM2Page() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'PM-Poshan Shakti Nirman(Monthly Statement)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Name of the school',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Disc',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Month',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: Text(
                      'Year',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                'Name of the Municipality',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Ward No.',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'No. of children as per student attendance Register',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(height: 20.h),
              DataTable(
                columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Date',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Holiday',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ],
                rows: List<DataRow>.generate(
                  31,
                      (index) => DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Padding(
                          padding: EdgeInsets.all(8.w),
                          child: Row(
                            children: [
                              Text('Day'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text('${index + 1}'),
                            ],
                          ),
                        ),
                      ),
                      DataCell(
                        Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HigherForm()),
                              );
                            },
                            child: Row(
                              children: [
                                Text(
                                  'Add',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.add_circle_outline_outlined,
                                    size: 25,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      DataCell(
                        CheckboxListTile(
                          value: _isChecked[index],
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked[index] = value!;
                            });
                            if (_isChecked[index]) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Holiday"),
                                    content: Text("This day is a holiday."),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("OK"),
                                      ),
                                    ],
                                  );
                                },
                              ).then((_) {
                                setState(() {
                                  _isChecked[index] = true;
                                });
                              });
                            }
                          },
                          title: Text(""),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                    ],
                  ),
                ).toList(),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _signatureImage == null
                      ? Container(
                    height: 100.h,
                    width: 250.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                      child: Text('No signature selected'),
                    ),
                  )
                      : Container(
                    height: 200.h,
                    width: 250.w,
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
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  )

                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMiddayMeal2Page() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Midday Meal (Monthly Statement)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Name of the school',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Disc',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Month',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: Text(
                      'Year',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                'Name of the Municipality',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Ward No.',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'No. of children as per student attendance Register',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(height: 20.h),
              DataTable(
                columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Date',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Holiday',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ],
                rows: List<DataRow>.generate(
                  31,
                      (index) => DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Padding(
                          padding: EdgeInsets.all(8.w),
                          child: Row(
                            children: [
                              Text('Day'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text('${index + 1}'),
                            ],
                          ),
                        ),
                      ),
                      DataCell(
                        Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HigherForm()),
                              );
                            },
                            child: Row(
                              children: [
                                Text(
                                  'Add',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.add_circle_outline_outlined,
                                    size: 25,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      DataCell(
                        CheckboxListTile(
                          value: _isChecked[index],
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked[index] = value!;
                            });
                            if (_isChecked[index]) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Holiday"),
                                    content: Text("This day is a holiday."),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("OK"),
                                      ),
                                    ],
                                  );
                                },
                              ).then((_) {
                                setState(() {
                                  _isChecked[index] = true;
                                });
                              });
                            }
                          },
                          title: Text(""),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                    ],
                  ),
                ).toList(),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _signatureImage == null
                      ? Container(
                    height: 100.h,
                    width: 250.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                      child: Text('No signature selected'),
                    ),
                  )
                      : Container(
                    height: 200.h,
                    width: 250.w,
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
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  )

                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMiddayMeal1Page() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Midday Meal (Monthly Statement)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Name of the school',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Disc',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Month',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: Text(
                      'Year',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                'Name of the Municipality',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Ward No.',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'No. of children as per student attendance Register',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(height: 20.h),
              DataTable(
                columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Date',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Holiday',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ],
                rows: List<DataRow>.generate(
                  31,
                      (index) => DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Padding(
                          padding: EdgeInsets.all(8.w),
                          child: Row(
                            children: [
                              Text('Day'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text('${index + 1}'),
                            ],
                          ),
                        ),
                      ),
                      DataCell(
                        Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => StudentForm()),
                              );
                            },
                            child: Row(
                              children: [
                                Text(
                                  'Add',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.add_circle_outline_outlined,
                                    size: 25,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      DataCell(
                        CheckboxListTile(
                          value: _isChecked[index],
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked[index] = value!;
                            });
                            if (_isChecked[index]) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Holiday"),
                                    content: Text("This day is a holiday."),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("OK"),
                                      ),
                                    ],
                                  );
                                },
                              ).then((_) {
                                setState(() {
                                  _isChecked[index] = true;
                                });
                              });
                            }
                          },
                          title: Text(""),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                    ],
                  ),
                ).toList(),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _signatureImage == null
                      ? Container(
                    height: 100.h,
                    width: 250.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                      child: Text('No signature selected'),
                    ),
                  )
                      : Container(
                    height: 200.h,
                    width: 250.w,
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
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  )

                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
