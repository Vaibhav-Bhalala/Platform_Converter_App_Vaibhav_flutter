import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_app/views/home_page.dart';
import 'package:platform_converter_app/views/material_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    routes: {
      '/': (context) => Material_Screen(),
    },
  )
      //     CupertinoApp(
      //   routes: {
      //     '/': (p0) => HomePage(),
      //   },
      //   debugShowCheckedModeBanner: false,
      // ),
      );
}
