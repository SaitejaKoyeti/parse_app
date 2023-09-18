
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class SecoundScreen extends StatelessWidget {

  late final String texta;
   late  final String textb;
  late  final String textc;

  SecoundScreen({ required this.texta,required this.textb, required this.textc}) {

  }

  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     title: Text("Scound Screen"),
   ),
   body: Center(
     child: Column(
       children: [
         Padding(padding: EdgeInsets.all(20),
         child: TextField(decoration: InputDecoration(
             border: OutlineInputBorder(),
             hintText: texta,
         ),
           ),
         ),
         Padding(padding: EdgeInsets.all(20),
           child: TextField(decoration: InputDecoration(
             border: OutlineInputBorder(),
             hintText: textb,
           ),
           ),
         ),
         Padding(padding: EdgeInsets.all(20),
           child: TextField(decoration: InputDecoration(
             border: OutlineInputBorder(),
             hintText: textc,

           ),
           ),

         ),

       ],
     )
   ),
 );

  }


}