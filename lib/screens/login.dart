import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../muni_screens/munipalityhome.dart';
import '../school_screens/schoolhome.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _currentPageIndex = 0;
  List<Widget> _cards = [];
  final double circleRadius = 90.0;

  @override
  void initState() {
    super.initState();
    _cards = [
      Container(
        height: ScreenUtil().screenHeight,
        width: ScreenUtil().screenWidth,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: circleRadius / 1.1.h),
                    child: SizedBox(
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(35.r),
                          child: Card(
                            color: Colors.white,
                            child: LoginForm(
                              onLogin: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HomePage()),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: circleRadius.w,
                    height: circleRadius.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.shade200,
                          blurRadius: 8.sp,
                          offset: Offset(0.sp, 5.sp),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4.w),
                      child: Center(
                        child: Container(
                          child: Icon(Icons.school, size: 50.sp, color: Colors.blue.shade900),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        height: ScreenUtil().screenHeight,
        width: ScreenUtil().screenWidth,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: circleRadius / 1.1.h),
                    child: SizedBox(
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(35.r),
                          child: Card(
                            color: Colors.white,
                            child: LoginForm(
                              onLogin: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MuniHome()),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: circleRadius.w,
                    height: circleRadius.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.shade200,
                          blurRadius: 8.sp,
                          offset: Offset(0.sp, 5.sp),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4.w),
                      child: Center(
                        child: Container(
                          child: Icon(Icons.location_city, size: 50.sp, color: Colors.blue.shade900),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        height: ScreenUtil().screenHeight,
        width: ScreenUtil().screenWidth,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: circleRadius / 1.1.h),
                    child: SizedBox(
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(35.r),
                          child: Card(
                            color: Colors.white,
                            child: LoginForm(
                              onLogin: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MuniHome()),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: circleRadius.w,
                    height: circleRadius.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.shade200,
                          blurRadius: 8.sp,
                          offset: Offset(0.sp, 5.sp),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4.w),
                      child: Center(
                        child: Container(
                          child: Icon(Icons.directions_car, size: 50.sp, color: Colors.blue.shade900),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade100,Colors.blue.shade400,Colors.blue.shade800],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: double.infinity,),
              Container(
                height: 510.sp,
                width: 330.sp,
                child: PageView(
                  onPageChanged: (index) {
                    setState(() {
                      _currentPageIndex = index;
                    });
                  },
                  children: _cards,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  final Function onLogin;

  LoginForm({required this.onLogin});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        children: [
          SizedBox(height: 70.h),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "User Email",
              prefixIcon: Icon(
                Icons.mail,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 35.h,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "User Password",
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
            ),
          ),
          Spacer(),
          SizedBox(
            width: double.infinity,
            height: 40.h,
            child: ElevatedButton(
              onPressed: () {onLogin();} ,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
              child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize:18.sp ),),
            ),
          ),

        ],
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 3')),
      body: Center(child: Text('Welcome to Page 3')),
    );
  }
}




