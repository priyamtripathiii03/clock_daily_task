import 'package:flutter/material.dart';

Icon iconudf({
  required double size,
  required var data,
}) =>
    Icon(
      Icons.add,
      size: 25,
    );

String img='assets/img/profile.jpg';
List drawerList=[
  {
    'icon':Icons.article,
    'name':'Interests',
  },
  {
    'icon':Icons.video_settings,
    'name':'My course',
  },
  {
    'icon':Icons.trending_up,
    'name':'Todo/done',
  },
  {
    'icon':Icons.download,
    'name':'Online Article',
  },
  {
    'icon':Icons.star,
    'name':'Rate Us',
  },
  {
    'icon':Icons.support_agent,
    'name':'Support',
  },
  {
    'icon':Icons.settings,
    'name':'Settings',
  },
  {
    'icon':Icons.logout,
    'name':'Log Out',
  },
];
DateTime dateTime= DateTime.now();

List days =[
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday',
];
List months =[
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];
bacImage()
{
  if(dateTime.hour>=6 && dateTime.hour<9)
  {
    return background[0];
  }
  else if(dateTime.hour>=9 && dateTime.hour<12)
  {
    return background[1];
  }
  else if(dateTime.hour>=12 && dateTime.hour<16)
  {
    return background[2];
  }
  else if(dateTime.hour>=16 && dateTime.hour<19)
  {
    return background[3];
  }
  else if(dateTime.hour>=19 && dateTime.hour<24)
  {
    return background[4];
  }
  else if(dateTime.hour>=0 && dateTime.hour<6)
  {
    return background[5];
  }
}
List background = [
  'assets/img/1.jpg',
  'assets/img/2.jpg',
  'assets/img/3.jpg',
  'assets/img/4.jpg',
  'assets/img/5.jpg',
  'assets/img/6.jpeg'
];
