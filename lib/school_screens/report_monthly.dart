import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class CookingCostTable extends StatefulWidget {
  @override
  _CookingCostTableState createState() => _CookingCostTableState();
}

class _CookingCostTableState extends State<CookingCostTable> {
  bool _isInspectionDone = false;
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
        title: Text('Monthly Report'),
      ),
        body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        SizedBox(height: 20.h,),
        Container(
          margin: EdgeInsets.all(16.w),
          child: Text(
            'Cooking Cost Details (in Rs. )',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(16.w),
          child: Table(
            border: TableBorder.all(),
            children: [
              TableRow(
                children: [
                  Center(child: Padding(
                    padding:  EdgeInsets.all(8.sp),
                    child: Text('Primary',style: TextStyle(fontSize: 16.sp,),),
                  )),
                  Center(child: Padding(
                    padding:  EdgeInsets.all(8.sp),
                    child: Text('Upper Primary',style: TextStyle(fontSize: 16.sp,),),
                  )),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Opening Balance'),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Enter opening balance',

                              hintStyle: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.grey.shade500,
                              ),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Opening Balance'),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Enter opening balance',

                              hintStyle: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.grey.shade500,
                              ),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Amount Received During Month'),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Enter amount received',
                              hintStyle: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.grey.shade500,
                              ),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Amount Received During Month'),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Enter amount received',
                              hintStyle: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.grey.shade500,
                              ),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Expenditure During Month'),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Enter expenditure',

                              hintStyle: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.grey.shade500,
                              ),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Expenditure During Month'),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Enter expenditure',

                              hintStyle: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.grey.shade500,
                              ),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Closing Balance'),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Enter closing balance',

                              hintStyle: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.grey.shade500,
                              ),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Closing Balance'),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Enter closing balance',

                              hintStyle: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.grey.shade500,
                              ),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(16.w),
          child: Text(
            'School Expenses Management Monitoring and Evaluation Expenses',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(16.w),
          child: Table(
            border: TableBorder.all(),
            children: [
              TableRow(
                children: [
                  Center(child: Padding(
                    padding:  EdgeInsets.all(8.sp),
                    child: Text('Opening \n Balance'),
                  )),
                  Center(child: Padding(
                    padding:  EdgeInsets.all(8.sp),
                    child: Text('Received \n during the \n month'),
                  )),
                  Center(
                      child: Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Text('Total Expenditure \n during the \n month'),
                      )),
                  Center(child: Padding(
                    padding:  EdgeInsets.all(8.sp),
                    child: Text('Clossing \n Balance'),
                  )),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Padding(
                      padding:  EdgeInsets.all(8.sp),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter',
                          hintStyle: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.grey.shade500,
                          ),

                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding:  EdgeInsets.all(8.sp),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter',
                          hintStyle: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding:  EdgeInsets.all(8.sp),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter',
                          hintStyle: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding:  EdgeInsets.all(8.sp),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter',
                          hintStyle: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(16.w),
          child: Text(
            'Details of food grain (in kilograms)',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(16.w),
          child: Table(
            border: TableBorder.all(),
            children: [
              TableRow(
                children: [
                  Center(child: Padding(
                    padding:  EdgeInsets.all(8.sp),
                    child: Text('Primary',style: TextStyle(fontSize: 16.sp,),),
                  )),
                  Center(child: Padding(
                    padding:  EdgeInsets.all(8.sp),
                    child: Text('Upper Primary',style: TextStyle(fontSize: 16.sp,),),
                  )),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Opening Balance'),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Wheat - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Rice - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Opening Balance'),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Wheat - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Rice - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),

                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Food grain Received During Month'),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Wheat - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Rice - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Food grain Received During Month'),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Wheat - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Rice - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Consumption During Month'),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Wheat - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Rice - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Consumption During Month'),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Wheat - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Rice - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Closing Balance'),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Wheat - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Rice - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(12.sp),
                    child: TableCell(
                      child: Column(
                        children: [
                          Text('Closing Balance'),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Wheat - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text('Rice - '),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text('kg'),
                              SizedBox(width: 20.w),
                            ],
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(16.w),
          child: Text(
            'School Inspection',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Column(
          children: [
            Text('School inspection done during the month'),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                    title: Text('Yes'),
                    value: _isInspectionDone,
                    onChanged: (newValue) {
                      setState(() {
                        _isInspectionDone = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
                Expanded(
                  child: CheckboxListTile(
                    title: Text('No'),
                    value: !_isInspectionDone,
                    onChanged: (newValue) {
                      setState(() {
                        _isInspectionDone = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),

              ],
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all(16.w),
          child: Table(
            border: TableBorder.all(),
            children: [
              TableRow(
                children: [
                  Center(child: Padding(
                    padding:  EdgeInsets.all(8.sp),
                    child: Text('Inspected By',style: TextStyle(fontSize: 16.sp,),),
                  )),
                  Center(child: Padding(
                    padding:  EdgeInsets.all(8.sp),
                    child: Text('In Numbers',style: TextStyle(fontSize: 16.sp,),),
                  )),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Padding(
                      padding:  EdgeInsets.all(8.sp),
                      child: Text('Member of Task Force'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding:  EdgeInsets.all(8.sp),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Padding(
                      padding:  EdgeInsets.all(8.sp),
                      child: Text('District Officials'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding:  EdgeInsets.all(8.sp),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Padding(
                      padding:  EdgeInsets.all(8.sp),
                      child: Text('Block / Taluka level Officials'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding:  EdgeInsets.all(8.sp),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Padding(
                      padding:  EdgeInsets.all(8.sp),
                      child: Text('SMC Members'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding:  EdgeInsets.all(8.sp),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(16.w),
          child: Text(
            'Untoward incidents during the month (if any)',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(16.w),
          child: Table(
            border: TableBorder.all(),
            children: [
              TableRow(
                children: [
                  TableCell(
                    child: Padding(
                      padding:  EdgeInsets.all(8.sp),
                      child: Text('Number of Incident occoured during the month'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding:  EdgeInsets.all(8.sp),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(16.w),
          child: Text(
            'Signature of Head Teacher',
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
        SizedBox(height: 10.h,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
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
        ),
        Container(
          margin: EdgeInsets.all(16.w),
          child: Text(
            'Signature of the SMC Chairperson / Gram Pradhan',
            style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
        SizedBox(height: 10.h,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
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
        ),
        SizedBox(height: 30.h,),
      ]),
    ));
  }
}
