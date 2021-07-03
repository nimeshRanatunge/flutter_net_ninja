import 'package:flutter/material.dart';
import 'package:ninja_http_packages/pages/choose_location.dart';
import 'package:ninja_http_packages/pages/home.dart';
import 'package:ninja_http_packages/pages/loading.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/home',
  routes: {//routs map
    '/':(context) => Loading(),
    '/home':(context) => Home(),
    '/location':(context) => ChooseLocation(),
  },
));
