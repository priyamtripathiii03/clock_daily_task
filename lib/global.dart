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
