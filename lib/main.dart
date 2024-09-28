import 'package:ecommerce_ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
 
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {

  const MyApp({super.key});
  
  @override
  State<MyApp> createState() {
    return My_app() ;
  }
 
}
// ignore: camel_case_types
class My_app extends State<MyApp>{
  @override
 Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

