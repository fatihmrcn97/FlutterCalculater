import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget{

  

  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{

  final TextEditingController t1 = new TextEditingController(text:"0");
  final TextEditingController t2 = new TextEditingController(text:"0");

  var num1,num2,sum=0;
  void doAddition(){
   setState(() {
     num1= int.parse(t1.text); 
     num2= int.parse(t2.text); 
      sum = num1+num2; 
   }); 
  }
 void doSubsutution(){
   setState(() {
     num1= int.parse(t1.text); 
     num2= int.parse(t2.text); 
      sum = num1-num2; 
   }); 
  }
 void doMultiplication(){
   setState(() {
     num1= int.parse(t1.text); 
     num2= int.parse(t2.text); 
      sum = num1*num2; 
   }); 
  }
   void doDivide(){
   setState(() {
     num1= double.parse(t1.text); 
     num2= double.parse(t2.text); 
          sum = num1 ~/num2; 
   }); 
  }




  @override
  // TODO: implement widget
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Calculater"),
          
        ),
        body: new Container(
          padding: const EdgeInsets.all(30.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              

              new TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: new InputDecoration(
                  hintText: "Enter a Number"
                ),
                controller: t1,
              ),
                new TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                controller: t2,
                decoration: new InputDecoration(
                  hintText: "Enter a Number"
                ),
              ),
              new Padding(
                padding: const EdgeInsets.only(top:20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                     child: new Text("+"),                   
                     onPressed: () {   
                       doAddition();                  
                     } , 
                    
                     color: Colors.greenAccent,
                  ),
                     new RaisedButton(
                       
                     child: new Text("-"),
                     onPressed: () {
                       doSubsutution();
                     } , 
                     color: Colors.greenAccent,
                  ),
                   
                ],
              ),
              new Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                     child: new Text("*"),
                     onPressed: () {
                        doMultiplication();
                     } , 
                     color: Colors.greenAccent,
                  ),
                     new RaisedButton(
                     child: new Text("/"),
                     onPressed: () {
                       doDivide();
                     } , 
                     color: Colors.greenAccent,
                  ),
                   
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top:20.0),
              ),
              new Text("Output : $sum",
              
              style: new TextStyle(
               
                fontSize: 20.0,color: Colors.pink,fontWeight: FontWeight.bold,
              ),
              ),  
            ],
            
          ),
        ),
    );
  }
}