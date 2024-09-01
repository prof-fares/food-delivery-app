import 'package:flutter/material.dart';
main() {
runApp(Screen2());


}
class Screen2 extends StatefulWidget{
  @override
  State<Screen2> createState() => _Screen2State();
}
List drain=["son","father","GF","GGf","Anscsector","pop","stat","value"];
List Train=["fares","mohamed","talaat","saleh","elshetery","elkg","test","Scroll"];
String text=" fares mohamed talat fares mohamed talat fares mohamed talat fares mohamed talat v vv v fares mohamed talatfares mohamed talat fares mohamed talat fares mohamed talat fares mohamed talat fares mohamed talat v vv v fares mohamed talatfares mohamed talat fares mohamed talat fares mohamed talat fares mohamed talat fares mohamed talat v vv v fares mohamed talatfares mohamed talat";
class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(appBar: AppBar(title: Text("Train")),

    body:
       Column(children: [
        Expanded(flex: 2,child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 4,)),child: Text(" fares mohamed talat"),margin: EdgeInsets.all(5),alignment: Alignment.center,),),
        
         Expanded(flex: 6,child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 6,)),child: Text(text),margin: EdgeInsets.all(5),alignment: Alignment.center,),),
         Expanded (flex: 1,child:
          Container(
            margin: EdgeInsets.all(5),
          decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 3,))  ,
            child: Row(children: 
            [Expanded(child: 
            Container(margin: EdgeInsets.all(10),alignment:Alignment.center,
              child: Row(children: 
              [SizedBox(width: 50,),Text("*"),Text("*"),Text("*"),Text("*"),Text("*"),],),
            ),
            ),Expanded(child: Container(alignment:Alignment.center,child: Text("fares mohamed talaat")))
              ],),
          )),
          Expanded(
         flex:4 ,child : Container( alignment:Alignment.center,margin: EdgeInsets.all(5),
          decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 3,)),child: Row(children: [
          Expanded(
            child: Column(children: [
              Expanded(child: Container(margin: EdgeInsets.all(22),alignment: Alignment.centerLeft,child: Icon(Icons.alarm,color: Colors.green,size: 30,))),
             Expanded(child: Container(margin: EdgeInsets.all(22),alignment: Alignment.center,child: Row(children: [Text("P"),Text("R"),Text("E"),Text("P"),Text(":"),],))),
             Expanded(child: Container(margin: EdgeInsets.all(22),alignment: Alignment.center,child: Row(children: [Container(alignment: Alignment.center,child: Text("25  ")),Container(alignment: Alignment.center,child: Text("min"))],)))
              
            ],),
          ),
           Expanded(
             child: Column(children: [
              Expanded(child: Container(margin: EdgeInsets.all(22),alignment: Alignment.centerLeft,child: Icon(Icons.alarm,color: Colors.green,size: 30,))),
             Expanded(child: Container(margin: EdgeInsets.all(22),alignment: Alignment.center,child: Row(children: [Text("C"),Text("O"),Text("O"),Text("C"),Text(":"),],))),
             Expanded(child: Container(margin: EdgeInsets.all(22),alignment: Alignment.center,child: Row(children: [Container(alignment: Alignment.center,child: Text("1  ")),Container(alignment: Alignment.center,child: Text("hr"))],)))
               
                     ],),
           ),
           Expanded(
             child: Column(children: [
              Expanded(child: Container(margin: EdgeInsets.all(22),alignment: Alignment.centerLeft,child: Icon(Icons.alarm,color: Colors.green,size: 30,))),
             Expanded(child: Container(margin: EdgeInsets.all(22),alignment: Alignment.center,child: Row(children: [Text("F"),Text("E"),Text("E"),Text("D"),Text("S"),Text(":"),],))),
             Expanded(child: Container(margin: EdgeInsets.all(22),alignment: Alignment.center,child: Row(children: [Container(alignment: Alignment.center,child: Text("4")),Container(alignment: Alignment.center,child: Text("-")),Container(alignment: Alignment.center,child: Text("6"))],)))
               
                     ],),
           ),
                 
          ],),))]),
    );}}
  