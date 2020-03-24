import "package:flutter/material.dart";

void main()=>runApp(myapp());

class myapp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
      return MaterialApp(
        title:"flutter basic",
        theme: ThemeData(primaryColor: Colors.white),
        home: myWidget()
      );
  }
}


class myWidget extends StatelessWidget{
    void openNextPage(BuildContext context){
      Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context){
          return Scaffold(
            appBar: AppBar(
              title: Text("next page")
            ),
            body: Center(child: Text("next page"))
          );
        }
      ));
    }
    final snackbar = SnackBar(content:Text("I am snack Bar"));
    final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
    @override
    Widget build(BuildContext context){
      return Scaffold(
          key:scaffoldkey,
          appBar: AppBar(
            title: Text("flutter basic"),
            actions:<Widget>[
              IconButton(
                icon: const Icon(Icons.add_alert),
                tooltip: "show SnackBar",
                onPressed:()=>{
                  scaffoldkey.currentState.showSnackBar(snackbar)
                } 
              ),
              IconButton(
                icon: const Icon(Icons.add_alert),
                tooltip: "go to next page",
                onPressed: ()=>openNextPage(context)
              )
            ] 
          ),
            body: Center(child:Text("App Bar Demo", style:TextStyle(fontSize:24)))
        ); 
    }
}
