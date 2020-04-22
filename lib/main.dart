import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'Detail.dart' as http;
import 'package:http/http.dart'as http;
//import './Detail.dart';


void main(){
  runApp(new MaterialApp(
    title: "Kedai Nanu",
    home: new Home(),
  )); 
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();

}
class _HomeState extends State<Home> {

Future<List> getData() async{
var post = http.post('http://192.168.43.136/penjualan_nanu/getdata.php');
final response =
 await post;

return json.decode(response.body);
}

  @override 
  Widget build(BuildContext context) {
        var floatingActionButton = new FloatingActionButton(
                           child: new Icon(Icons.mail),
                       onPressed: (){}, 
                     );
                var floatingActionButton2 = floatingActionButton;
                return new Scaffold(
                  appBar: new AppBar(
                    title: new Text("Kedai Nanu"),
                    ),
                 floatingActionButton: floatingActionButton2,
      body: new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot){
          if(snapshot.hasError) print(snapshot.error);

          return snapshot.hasData 
          ? new ItemList(list: snapshot.data,)
          : new Center( child: new CircularProgressIndicator(),);
        }
      )
    ); 
  }
}

class ItemList {
 final  List list;
  ItemList({this.list})
;}
