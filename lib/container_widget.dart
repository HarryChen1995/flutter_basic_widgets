import "package:flutter/material.dart";

void main()=>runApp(myapp());

class myapp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Container Demo",
      home: container_widgets()
    );

  }
}

class container_widgets extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Demo"),
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(
            height: Theme.of(context).textTheme.display1.fontSize*1.1 + 200.0
          ),
          padding:const EdgeInsets.all(8.0),
          color:Colors.blue[600],
          alignment: Alignment.center,
          child: Text("Hello World",
          style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white)
        ),
        transform: Matrix4.rotationZ(0.1),
       )
      )
    );
  }
}