import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double result=0;
  double h_value=0;
  double w_value=0;
  void calculate(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: Text('BMI CALCULATOR')),
      backgroundColor: Colors.blueGrey,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(left:400,right: 400,top: 30),
          child: TextField(
            controller:weight ,
            maxLines: 1,
            cursorColor: Colors.black,
            style: TextStyle(fontSize: 20, color: Colors.black),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white70,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                hintText: 'Enter weight'),
          ),
        ),
          Padding(
            padding: const EdgeInsets.only(left: 400,right: 400,bottom: 50),
            child: TextField(
              controller: height,
            cursorColor: Colors.black,
            style: TextStyle(fontSize: 20, color: Colors.black),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white70,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
            hintText:'ENTER HEIGHT'),
        ),
          ),
        TextButton(onPressed: () {
    setState((){

    calculate();
    }
    );
    },
    child: Text('CALCULATOR',style: TextStyle(color: Colors.black),)),
        Text(result.toString())


      ]),
    );
  }
}
