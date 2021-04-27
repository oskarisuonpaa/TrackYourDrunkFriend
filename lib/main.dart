import 'package:flutter/material.dart';
import 'package:flutter_app/navigation.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Track your drunk friend',
      home: Navigation(),
    );
  }
}