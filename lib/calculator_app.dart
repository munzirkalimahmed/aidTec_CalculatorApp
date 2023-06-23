import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {

  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        automaticallyImplyLeading: false,
      ),
      resizeToAvoidBottomInset: false,


      body:  Column(
        children: <Widget>[
          SizedBox(height: 50,),
          Expanded(
            child: Container(
              child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      alignment: Alignment.centerRight,
                      child: Text(
                        userInput.toString(),
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      alignment: Alignment.centerRight,
                      child: Text(
                        answer.toString(),
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              InkWell(
                onTap: (){

                  userInput = '';
                  answer = '';


                  setState(() {

                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                  ),
                  child: Center(
                    child: Text('C',style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){

                  userInput = userInput.substring(0,userInput.length-1);

                  setState(() {

                  });


                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                  ),
                  child:Center(

                    child: Text('DEL',style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){

                 userInput = userInput.toString().startsWith('-') ? userInput = userInput.toString().substring(1) : userInput = '-' + userInput.toString();

                  setState(() {


                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                  ),
                  child: Center(
                    child: Text('+/-',style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){


                  userInput = userInput + '/';
                  setState(() {

                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text('/',style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
              ),
              ),
              SizedBox(width: 2,),
            ],
          ),
          SizedBox(height: 1,),
          Row(
            children: [
              SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  userInput = userInput + '7';
                  setState(() {

                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text('7',style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){
                  userInput = userInput + '8';
                  setState(() {

                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child:Center(
                    child: Text('8',style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){

                  userInput = userInput + '9';
                  setState(() {

                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text('9',style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){

                  userInput = userInput + 'x';

                  setState(() {

                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text('x',style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 2,),
            ],
          ),
          SizedBox(height: 1,),
          Row(
            children: [
              SizedBox(width: 20,),
              InkWell(
                onTap: (){

                  userInput = userInput + '4';
                  setState(() {

                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text('4',style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){

                  userInput = userInput + '5';
                  setState(() {

                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child:Center(
                    child: Text('5',style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){

                  userInput = userInput + '6';
                  setState(() {

                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text('6',style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){

                  userInput = userInput + '-';

                  setState(() {

                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text('-',style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 2,),
            ],
          ),
          SizedBox(height: 1,),
          Row(
            children: [
              SizedBox(width: 20,),
              InkWell(
                onTap: (){

                  userInput = userInput + '1';
                  setState(() {

                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text('1',style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){

                  userInput = userInput + '2';
                  setState(() {

                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child:Center(
                    child: Text('2',style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){

                  userInput = userInput + '3';
                  setState(() {

                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text('3',style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){

                  userInput = userInput + '+';

                  setState(() {

                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text('+',style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 2,),
            ],
          ),
          SizedBox(height: 1,),
          Row(
            children: [
              SizedBox(width: 20,),
              InkWell(
                onTap: (){


                  userInput = userInput + '0';
                  setState(() {

                  });

                },
                child: Container(
                  width: 170,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text('0',style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){

                  userInput = userInput + '.';
                  setState(() {

                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child:Center(
                    child: Text('.',style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){

                  equalPress();
                  setState(() {


                  });

                },
                child: Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text('=',style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
            ],
          ),
          SizedBox(height: 1,),
        ],
      ),


    );
  }








  void equalPress (){

    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('x', '*');



    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
