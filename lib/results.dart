import 'package:flutter/material.dart';
import 'firstscreen.dart';

class result extends StatefulWidget{
  
  @override
  State<result> createState() => _resultState();
}
class _resultState extends State<result> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color(0xFF0A0E21),
    body: Column(children: [Expanded(child: Container(alignment: Alignment.center,child: Text("Collection = $collect",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w600,fontFamily: "Poppins"),),
        decoration: BoxDecoration(color: Color.fromRGBO(255, 58, 8, 1),borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(300, 200),bottomRight: Radius.elliptical(300,200))),)),
        Expanded(
          child: Container(
            child: Row(children: [Expanded(child: InkWell(onTap:(){
              setState(() {
                
              });
            },child: Container(alignment: Alignment.center,child: Text("${rejectval.length} رفض ودفع",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color:Color(0xFF0A0E21), ),),margin:EdgeInsets.all(15) ,decoration: BoxDecoration(color:Color.fromRGBO(255, 58, 68, 1),borderRadius: BorderRadius.circular(40) ),))),
            Expanded(child: InkWell(onTap:(){
              setState(() {
                
              });
            },child: Container(alignment: Alignment.center,child: Text("${receive.length} الأستلامات ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color:Color(0xFF0A0E21), ),),margin:EdgeInsets.all(15) ,decoration: BoxDecoration(color:Color.fromRGBO(255, 58, 68, 1),borderRadius: BorderRadius.circular(40) ),)))],),
          ),
        ),
        Expanded(
          child: Container(
            child: Row(children: [Expanded(child: Container(alignment: Alignment.center,child: Text(" ${reject0.length} رفض بدون",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color:Color(0xFF0A0E21), ),),margin:EdgeInsets.all(15) ,decoration: BoxDecoration(color:Color.fromRGBO(255, 58, 68, 1),borderRadius: BorderRadius.circular(40) ),)),
            Expanded(child: InkWell(onTap:(){
              setState(() {
                
              });
            },child: Container(alignment: Alignment.center,child: Text("${receive.length} جزئي ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color:Color(0xFF0A0E21), ),),margin:EdgeInsets.all(15) ,decoration: BoxDecoration(color:Color.fromRGBO(255, 58, 68, 1),borderRadius: BorderRadius.circular(40) ),)))],),
          ),
        ),
        Expanded(
          child: Container(
            child: Row(children: [Expanded(child: InkWell(onTap:(){
              setState(() {
                
              });
            },child: Container(alignment: Alignment.center,child: Text("${receive.length} تأجيلات ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color:Color(0xFF0A0E21), ),),margin:EdgeInsets.all(15) ,decoration: BoxDecoration(color:Color.fromRGBO(255, 58, 68, 1),borderRadius: BorderRadius.circular(40) ),))),
            Expanded(child: InkWell(onTap:(){
              setState(() {
                
              });
            },child: Container(alignment: Alignment.center,child: Text("${receive.length} الغاء ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color:Color(0xFF0A0E21), ),),margin:EdgeInsets.all(15) ,decoration: BoxDecoration(color:Color.fromRGBO(255, 58, 68, 1),borderRadius: BorderRadius.circular(40) ),)))],),
          ),
        ),
        Expanded(
          child: Container(
            child: Row(children: [
            Expanded(child: InkWell(onTap:(){
              setState(() {
                
              });
            },child: Container(alignment: Alignment.center,child: Text("${receive.length} تهرب ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color:Color(0xFF0A0E21), ),),margin:EdgeInsets.only(right:120,left: 120,top: 15,bottom: 15) ,decoration: BoxDecoration(color:Color.fromRGBO(255, 58, 68, 1),borderRadius: BorderRadius.circular(40) ),)))],),

          ),
        ),
        Expanded(child: Container(child: Column(
          children: [
            Expanded(child: Container(child: Row(children:[Expanded(flex: 1,child: SizedBox(),),Expanded(flex: 6,child: Container(margin: EdgeInsets.all(7),decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(10)),)),Expanded(flex: 1,child: SizedBox())]))),
                        Expanded(child: Container(child: Row(children:[Expanded(flex: 1,child: SizedBox(),),Expanded(flex: 6,child: Container(margin: EdgeInsets.all(7),decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(10)),)),Expanded(flex: 1,child: SizedBox())]))),
          ],
        )))],)
  );}}