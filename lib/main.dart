import 'package:flutter/material.dart';

import 'SecoundScreen.dart';


void main() {
  runApp(MaterialApp(
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FirstScreenState();


}

class _FirstScreenState extends State<FirstScreen>{

  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  TextEditingController textEditingController3 = TextEditingController();


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Siginup Page"),
     ),
     body: Center(
       child:
       Column(
         children: [
           Padding(padding: EdgeInsets.all(20),
             child: TextField(
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: "Enter your First Name "
               ),
               controller: textEditingController1,
             ),
           ),
           Padding(padding: EdgeInsets.all(20),
             child: TextField(
               decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: "Enter your Last Name "
               ),
               controller: textEditingController2,
             ),
           ),
           Padding(padding: EdgeInsets.all(20),
             child: TextField(
               decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: "Enter your Email "
               ),
               controller: textEditingController3,
             ),
           ),
           ElevatedButton(onPressed: (){

             String text1 = textEditingController1.text;

             String text2 = textEditingController2.text;
             String text3 = textEditingController3.text;
             Navigator.push(context, MaterialPageRoute(builder: (context) => SecoundScreen(texta: text1, textb: text2, textc: text3,)));

           },
               child: Text("Submit"))

         ],
       ),
     ),
   );
  }
}







