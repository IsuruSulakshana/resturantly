import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:resturantly/widget/chat/photo.dart';
import 'package:resturantly/screens/homePage/homePage.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light
      ),
      home: const Home(),
    );
  }
}
