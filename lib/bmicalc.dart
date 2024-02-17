import'package:flutter/material.dart';
class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text);
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          centerTitle: true,
            backgroundColor: Colors.black54,
          title: Text('BMI Calculator '),),
      backgroundColor: Colors.blueGrey[700] ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(style: TextStyle(fontSize:25 ),
            controller: height,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Height',
                hintText: 'Enter your height'
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(style: TextStyle(fontSize: 25),
            controller: weight,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Weight',
                hintText: 'Enter weight'
            ),),
          ),



          TextButton(onPressed: (){ calculate();}, child: Text(style: TextStyle(fontSize: 20),'CALCULATE')),
          Text(style: TextStyle(fontSize: 20),result.toString())
      ],),

    );

  }
}
