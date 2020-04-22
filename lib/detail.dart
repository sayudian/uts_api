import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  List list;
  int index;
  
  Detail({this.index,this.list});
  @override
  _DetailState createState() => new _DetailState();

}

class _DetailState extends State<Detail> {
  @override 
  Widget build(BuildContext context) {
    var scaffold3 = buildScaffold();
       
     
  
  }

  Scaffold buildScaffold() {
    return new Scaffold(
                            appBar: new AppBar(title: new Text("${widget.list[widget.index]['nama']}")),
                            body: new Container(
                              height: 250.0,
                            padding: const EdgeInsets.all(20.0),
                             child: new Card(
                                child: new Center(
                                   child: new Column(
                                     children: <Widget>[
                      
                                    
                                      new Text(widget.list[widget.index]['nama'], style: new TextStyle(fontSize: 20.0),),
                                      new Text("Keterangan : ${widget.list[widget.index]['keterangan']}", style: new TextStyle(fontSize: 18.0),),
                                      new Text("Jumlah: ${widget.list[widget.index]['jumlah']}", style: new TextStyle(fontSize: 18.0),),
                                      new Text("Tanggal: ${widget.list[widget.index]['tanggal']}", style: new TextStyle(fontSize: 18.0),),
                                      new Padding(padding: const EdgeInsets.only(top:30.0),),
                      
                                       new Row(
                                            mainAxisSize:  MainAxisSize.min,
                                         children: <Widget>[
                                             new RaisedButton(
                                                 child: new Text("EDIT"),
                                                  color: Colors.green,
                                            onPressed: (){},
                      
                                          ), 
                                          new RaisedButton(
                                            child: new Text("DELETE"),
                                            color: Colors.red,
                                            onPressed: (){},
                                          ),
                                        ]
                      
                                       )
                                     ],
                                ),
                             ),
                            ))); 
                        
  }
}