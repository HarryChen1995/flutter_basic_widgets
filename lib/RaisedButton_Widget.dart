import "package:flutter/material.dart";

void main()=>runApp(myapp());

class myapp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title:"RaiseButton Demo",
      home: RaisedButton_widgets()
    );

  }
}

class RaisedButton_widgets extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("RaisedButton Demo"),
      ),
      body:Center(
        child:Column(
          children: <Widget>[
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: null,
              child: Text("Disable Button", style: TextStyle(fontSize:20))
            ),
             const SizedBox(height: 30),
             RaisedButton (
               onPressed: (){},
               child: const Text("Enable Button", style: TextStyle(fontSize: 20))
             ),
             const SizedBox(height: 30),
             RaisedButton(
               onPressed:(){},
               textColor: Colors.white,
               padding: EdgeInsets.all(0.0),
               child: Container(
                 decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                 ),
                 padding: EdgeInsets.all(10.0),
                 child: const Text("Gradient Buttot", style:TextStyle(fontSize:20))
                )
             )
          ],
        ),
      )
    );
  }
}
