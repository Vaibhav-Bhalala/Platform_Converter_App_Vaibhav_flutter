import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_app/provider/platform_provider.dart';
import 'package:platform_converter_app/views/home_page.dart';
import 'package:platform_converter_app/views/material_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<Platformprovider>(
          create: (context) => Platformprovider(),
        )
      ],
      builder: (context, child) =>
          (Provider.of<Platformprovider>(context).changeplatform.isIos == false)
              ? MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(useMaterial3: true),
                  routes: {
                    '/': (context) => Material_Screen(),
                  },
                )
              : CupertinoApp(
                  routes: {
                    '/': (p0) => HomePage(),
                  },
                  debugShowCheckedModeBanner: false,
                ),
    ),
  );
}
