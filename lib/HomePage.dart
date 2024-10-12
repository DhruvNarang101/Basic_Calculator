import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{
  var num1=0,num2=0,sum=0; // sum is used for the output

  final TextEditingController t1 = new TextEditingController(text:"0");
  final TextEditingController t2 = new TextEditingController(text:"0");

  void doAddition(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1+num2;
    });
  }

  void doSub(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1-num2;
    });
  }

  void doMul(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1*num2;
    });
  }

  void doDiv(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1/num2).toInt();
    });
  }

  void doMod(){
    setState((){
      num1=int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1%num2;
    });
  }

  void doClear(){
    setState(() {
      t1.text="0";
      t2.text="0";
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        backgroundColor: Colors.tealAccent,
        title: Text(
          "Calculator",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Output: $sum",
              style:TextStyle(
                fontWeight:FontWeight.bold,
                fontSize: 20,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller : t1,
              decoration: InputDecoration(
                hintText: "Enter number 1",
              ),

            ),
            TextField(
              keyboardType: TextInputType.number,
              controller : t2,
              decoration: InputDecoration(
                hintText: "Enter number 2",
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  child: Text("+"),
                  color: Colors.tealAccent,
                  onPressed: doAddition,
                ),
                MaterialButton(
                  color: Colors.tealAccent,
                  child: Text("--"),
                  onPressed:doSub,
                ),
              ],
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children :[
                MaterialButton(
                  color:Colors.tealAccent,
                  child: Text("*"),
                  onPressed:doMul,
                ),
                MaterialButton(
                  color:Colors.tealAccent,
                  child:Text("/"),
                  onPressed:doDiv,
                ),
              ],
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children : [
              MaterialButton(
                child:Text("%"),
                color:Colors.tealAccent,
                onPressed:doMod,
              ),
                MaterialButton(
                  child: Text("Clear"),
                  color: Colors.tealAccent,
                  onPressed:doClear,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}