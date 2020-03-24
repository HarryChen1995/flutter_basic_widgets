import "package:flutter/material.dart";

void main()=>runApp(myapp());

class myapp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Column Demo",
      home: column_widgets()
    );

  }
}

class column_widgets extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Demo"),
      ),
      body: Column(
        children: <Widget>[
          Text("Widget 1"),
          Text("Widget 2"),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: const FlutterLogo()
              ))
        ],
      )

    );
  }
}