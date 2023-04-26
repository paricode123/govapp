import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Menu Bar ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.sp,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue.shade700,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/cover.jpg'),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          ListTile(
            leading: Icon(
              Icons.insert_drive_file_outlined,
              size: 35.sp,
            ),
            title: Text(
              'School Info View',
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
            onTap: () => {},
          ),
          SizedBox(height: 30.h),
          ListTile(
            leading: Icon(
              Icons.verified_user,
              size: 35.sp,
            ),
            title: Text(
              'About Us',
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(height: 30.h),
          ListTile(
            leading: Icon(
              Icons.border_color,
              size: 35.sp,
            ),
            title: Text(
              'Privacy & Policy',
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(height: 30.h),
          ExpansionTile(
            leading: Icon(
              Icons.currency_rupee,
              size: 35.sp,
            ),
            title: Text(
              'Payment',
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.w),
                child: ListTile(
                  leading: Icon(
                    Icons.payment,
                    size: 30.sp,
                  ),
                  title: Text(
                    'Outstanding Bills',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.w),
                child: ListTile(
                  leading: Icon(
                    Icons.payments_outlined,
                    size: 30.sp,
                  ),
                  title: Text(
                    'Payment Mode',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              size: 35.sp,
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Menu Bar ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.sp,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue.shade700,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/cover.jpg'),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          ListTile(
            leading: Icon(
              Icons.insert_drive_file_outlined,
              size: 35.sp,
            ),
            title: Text(
              'School Info View',
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
            onTap: () => {},
          ),
          SizedBox(height: 30.h),
          ListTile(
            leading: Icon(
              Icons.verified_user,
              size: 35.sp,
            ),
            title: Text(
              'About Us',
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(height: 30.h),
          ListTile(
            leading: Icon(
              Icons.border_color,
              size: 35.sp,
            ),
            title: Text(
              'Privacy & Policy',
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(height: 30.h),
          ExpansionTile(
            leading: Icon(
              Icons.currency_rupee,
              size: 35.sp,
            ),
            title: Text(
              'Payment',
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.w),
                child: ListTile(
                  leading: Icon(
                    Icons.payment,
                    size: 30.sp,
                  ),
                  title: Text(
                    'Outstanding Bills',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.w),
                child: ListTile(
                  leading: Icon(
                    Icons.payments_outlined,
                    size: 30.sp,
                  ),
                  title: Text(
                    'Payment Mode',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              size: 35.sp,
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}