import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Screens/drawer.dart';
import 'muni_dow.dart';
import 'muni_holiday.dart';
import 'muni_manage.dart';

class MuniHome extends StatefulWidget {
  const MuniHome({Key? key}) : super(key: key);

  @override
  State<MuniHome> createState() => _MuniHomeState();
}

class _MuniHomeState extends State<MuniHome> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFfFFFCF2),
      appBar: AppBar(
        title: Text('Municipality '),
        elevation: 0,
      ),
      drawer: NavDrawer(),
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
                    top: -55.h,
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
                    top: 45.h,
                    child: Column(
                      children: [
                        _buildRow([
                          _buildContainer('Management', 'assets/images/management.png',() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MuniManage()),
                            );                          },),
                          _buildContainer('Holiday', 'assets/images/holiday.png',() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Muni_holi()),
                            );                          },),
                        ]),
                        _buildRow([
                          _buildContainer('Message', 'assets/images/message.png',() {
                            // Navigate to the Inspection page
                          },),
                          _buildContainer('Download', 'assets/images/download.png',() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MuniDow()),
                            );                          },),
                        ]),
                        _buildRow([
                          _buildContainer('Project', 'assets/images/project.png',() {
                            // Navigate to the Inspection page
                          },),
                          _buildContainer('Audit', 'assets/images/audit.png',() {
                            // Navigate to the Inspection page
                          },),
                        ]),
                        _buildRow([
                          _buildContainer(
                            'Inspection',
                            'assets/images/inspection.png',
                                () {
                              // Navigate to the Inspection page
                            },
                          ),
                          _buildContainer(
                            'Challan',
                            'assets/images/chalan.png',
                                () {
                              // Navigate to the Challan page
                            },
                          ),
                        ]),
                        // SizedBox(height: 500.h,),
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
  Widget _buildRow(List<Widget> children) {
    return Row(
      children: children,
    );
  }

  Widget _buildContainer(String title, String image, Function() onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 160,
          width: 150,
          margin: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.w),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2.w,
                blurRadius: 5.w,
                offset: Offset(0.w, 3.w),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:8.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  height: 80.h,
                  width: 100.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical:8.h),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}