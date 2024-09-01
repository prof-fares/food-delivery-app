import 'package:delavryapp/firstscreen.dart';
import 'package:flutter/material.dart';
class colScreen extends StatefulWidget{
  
  @override
  State<colScreen> createState() => _colScreenState();
}
class _colScreenState extends State<colScreen> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(backgroundColor: Colors.blue,title: Text("collection",style: TextStyle(color: Color(0xFF0A0E21),fontSize: 25,fontWeight: FontWeight.bold),)),
    backgroundColor: Color(0xFF0A0E21),
    body: Expanded(child: Column(children: [Expanded(child: Container(child: Row(children: [Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_rounded))),Expanded(child: Text("${receive.length}",style: TextStyle(color:Color(0xFF0A0E21) ,fontSize: 25,fontWeight: FontWeight.bold),))],),decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(40)),))],))
  );}}