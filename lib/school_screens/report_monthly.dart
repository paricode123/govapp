import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CookingCostTable extends StatefulWidget {
  @override
  _CookingCostTableState createState() => _CookingCostTableState();
}

class _CookingCostTableState extends State<CookingCostTable> {
  TextEditingController _primaryOpeningBalanceController =
      TextEditingController();
  TextEditingController _primaryAmountReceivedController =
      TextEditingController();
  TextEditingController _primaryExpenditureDuringMonthController =
      TextEditingController();
  TextEditingController _primaryClosingBalanceController =
      TextEditingController();
  TextEditingController _upperPrimaryOpeningBalanceController =
      TextEditingController();
  TextEditingController _upperPrimaryAmountReceivedController =
      TextEditingController();
  TextEditingController _upperPrimaryExpenditureDuringMonthController =
      TextEditingController();
  TextEditingController _upperPrimaryClosingBalanceController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monthly Report'),
      ),
        body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        SizedBox(height: 20,),
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
                  Center(child: Text('Primary')),
                  Center(child: Text('Upper Primary')),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Column(
                      children: [
                        Text('Opening Balance'),
                        TextField(
                          controller: _primaryOpeningBalanceController,
                          decoration: InputDecoration(
                            hintText: 'Enter opening balance',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Column(
                      children: [
                        Text('Opening Balance'),
                        TextField(
                          controller: _upperPrimaryOpeningBalanceController,
                          decoration: InputDecoration(
                            hintText: 'Enter opening balance',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Column(
                      children: [
                        Text('Amount Received During Month'),
                        TextField(
                          controller: _primaryAmountReceivedController,
                          decoration: InputDecoration(
                            hintText: 'Enter amount received during month',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Column(
                      children: [
                        Text('Amount Received During Month'),
                        TextField(
                          controller: _upperPrimaryAmountReceivedController,
                          decoration: InputDecoration(
                            hintText: 'Enter amount received during month',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Column(
                      children: [
                        Text('Expenditure During Month'),
                        TextField(
                          controller: _primaryExpenditureDuringMonthController,
                          decoration: InputDecoration(
                            hintText: 'Enter expenditure during month',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Column(
                      children: [
                        Text('Expenditure During Month'),
                        TextField(
                          controller:
                              _upperPrimaryExpenditureDuringMonthController,
                          decoration: InputDecoration(
                            hintText: 'Enter expenditure during month',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Column(
                      children: [
                        Text('Closing Balance'),
                        TextField(
                          controller: _primaryClosingBalanceController,
                          decoration: InputDecoration(
                            hintText: 'Enter closing balance',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Column(
                      children: [
                        Text('Closing Balance'),
                        TextField(
                          controller: _upperPrimaryClosingBalanceController,
                          decoration: InputDecoration(
                            hintText: 'Enter closing balance',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ],
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
          margin: EdgeInsets.all(16),
          child: Table(
            border: TableBorder.all(),
            children: [
              TableRow(
                children: [
                  Center(child: Text('Opening \n Balance')),
                  Center(child: Text('Received \n during the \n month')),
                  Center(
                      child: Text('Total Expenditure \n during the \n month')),
                  Center(child: Text('Clossing \n Balance')),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter',
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter',
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter',
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter',
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
      ]),
    ));
  }
}
