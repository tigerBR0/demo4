import 'package:demo4/pages/home_page.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  static final String id = 'third_page';
  String? name;
  int? age;

  ThirdPage({this.name,this.age});


  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

void _homePage(){
  Navigator.of(context).pop({"name": "Khurbanov", "age": 33});

}

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Third page"),
      centerTitle: true,
      backgroundColor: Colors.black,
      foregroundColor:  Colors.lightGreenAccent,

    ),
      body: Center(
          child:TextButton(
            onPressed: (){
              _homePage();
            },
            style: TextButton.styleFrom(
              primary: Colors.lightGreenAccent,
              backgroundColor: Colors.black,
            ),
            child: Text("${widget.age} ${widget.name}"),
          )

      ),
    );
  }

