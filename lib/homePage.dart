import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(leading: Builder(builder: (BuildContext context){
        return Container(child: Column(children: [
              IconButton(icon: Icon(Icons.local_taxi, color: Colors.black,), onPressed: () {  },),
              Text('Call Taxi', textAlign: TextAlign.center, style: TextStyle(color: Colors.black),)
            ],
          ),
        );
      },
      ),
        centerTitle: true,
        title: Text('Track your friend', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: Container(color: Colors.grey,),
    );
  }
}