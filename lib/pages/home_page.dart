import 'package:demo4/pages/detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

static final String id = 'home_page';




  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "Go to Detail Page";

  Future _onDetail()async{

   Map result = await Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return DetailPage(input:"Value in Home Page");
    }));
if(result == 'null'|| result.containsKey("data")){
  setState(() {
    data = result["data"];
  });

}else{
  print("Nothing");

}

  }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Home Page"),
      centerTitle: true,
      backgroundColor: Colors.black,
      foregroundColor: Colors.green,
      primary: true,

    ),
      body: Center(
        child:TextButton(
          style: TextButton.styleFrom(
            primary: Colors.green,
            backgroundColor: Colors.black,

          ),
          onPressed: (){
            _onDetail();
          },
          child: Text(data),
        )

      ),
    );
  }

