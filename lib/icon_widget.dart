import "package:flutter/material.dart";

void main()=>runApp(myapp());

class myapp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Icon Demo",
      home: container_widgets()
    );

  }
}

class container_widgets extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Demo"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const<Widget>[
          Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
            semanticLabel: "nothing",
          ),
          Icon(
            Icons.audiotrack,
            color: Colors.green,
            size: 30.0,
            semanticLabel: "nothing",
          ),
          Icon(
            Icons.beach_access,
            color: Colors.blue,
            size: 36.0,
            semanticLabel: "nothing",
          ),
        ]
      )
    );
  }
}