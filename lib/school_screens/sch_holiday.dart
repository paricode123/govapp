import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SchHoli extends StatefulWidget {
  const SchHoli({Key? key}) : super(key: key);

  @override
  State<SchHoli> createState() => _SchHoliState();
}

class _SchHoliState extends State<SchHoli> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFfFFFCF2),
      appBar: AppBar(
        title: Text('Holiday '),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight,
              decoration: const BoxDecoration(
                color: Color(0xFfFFFCF2),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0.h,
                    top: -70.h,
                    child: Container(
                      height: 303.7161865234375,
                      width: 575.0994873046875,
                      decoration: BoxDecoration(
                        color: Color(0xFfFFFCF2), // Set the background color of the ellipse
                      ),
                      child: Transform.translate(
                        offset: Offset(-73.8828125, -49.3248291015625),
                        child: SizedBox(
                          width: 1000, // Set a large width to create the ellipse shape
                          height: 1000, // Set a large height to create the ellipse shape
                          child: ClipOval(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 24.w,
                    left: 24.w,
                    top: 67.h,
                    child: Column(
                      children: [
                        _buildContainer('Show Holiday', 'assets/images/showholiday.png'),
                        _buildContainer('Add Own Holiday', 'assets/images/addholiday.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildContainer(String title, String image) {
    return Column(
      children: [
        Container(
          width: 350.w,
          height: 130.h,
          margin: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.w),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2.w,
                blurRadius: 5.w,
                offset: Offset(0, 3.w),
              ),
            ],
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.all(10.w),
                  child: Container(
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  child: Image.asset(
                    image,
                    height: 100.h,
                    width: 100.w,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}