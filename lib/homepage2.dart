import 'package:flutter/material.dart';

class SingleListItemPage extends StatelessWidget {
  const SingleListItemPage({super.key});
  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("List Item"),
      backgroundColor: Colors.blueGrey,
    ),
    body:Center(
      child: Card(
        elevation: 30,
        child: SizedBox(
          height:30,
           width: 30,
          child: Column(
           children: [Image(image: AssetImage("assest/flutter.png"))], 
          ),
        ),
      ),
    ),

  );
  }
}
