import 'package:demo4/pages/third_page.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static final String id = 'detail_page';
 String?  input  = "Detail Page";

   DetailPage({this.input});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String? res ;
  bool r = false;
  void _botm()async{
    if(r){
   Navigator.of(context).pop({"data": "Rakhmiddin Khurbanov"});
    }else{
      _onBotmThird();
    }
  }
  Future _onBotmThird()async{

    Map result =await Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return ThirdPage(name:"Rahkmiddin",age:22);
    }));
if(result != 'null'|| result.containsKey("age")){
setState(() {
  r = true;
  widget.input = result["name"].toString()+" " + result["age"].toString();
});

}else{
  r = false;
}
  }


  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(

      title: Text("Detail Page"),
      centerTitle: true,
      backgroundColor: Colors.black,
      foregroundColor: Colors.yellow,
    ),
      body: Center(

          child:ElevatedButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            onPressed: (){
              _botm();
            },

            child: Text(widget.input!),
          )

      ),
    );
  }

