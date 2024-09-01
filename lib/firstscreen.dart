import 'package:delavryapp/tests.dart';
import 'package:flutter/material.dart';
main() {
runApp(Screen1());


}
class Screen1 extends StatefulWidget{
  
  @override
  State<Screen1> createState() => _Screen1State();
}
double collect=0;
bool active=false;
List names=[];
List adress=[];
List numpers=[];
List values=[];
List rejectval=[];
List reject0=[];
List receive=[];
List nores=[];
List evasion=[];
List delay=[];
List cancel=[];

final checker= GlobalKey<FormState>();
final checker2= GlobalKey<FormState>();
final textclear=TextEditingController();
final text2Clear=TextEditingController();
final text3Clear=TextEditingController();
final text4Clear=TextEditingController();
final refuseval=TextEditingController();
 int h =0;
 bool helper(){
  if(h!=0)
  {
  return true ;
  }
  return false;
 }

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    resizeToAvoidBottomInset: false,
    floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.yellow,
            child: Icon(Icons.add),onPressed:  (){
              
                   setState(() {
                                  showDialog(context: context, builder: (context){
                                    return AlertDialog(backgroundColor: Color(0xFF0A0E21),
                                    title: Text("Order ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.greenAccent),),
                                      contentPadding: EdgeInsets.only(top: 100),
                                      
                                      
                                      content: Form(key: checker,
                                        child: SingleChildScrollView(
                                        physics: BouncingScrollPhysics(),
                                        child: Column(
                                          children: [

                                            SizedBox(height: 10,),
                                             TextFormField(
                                              
                                              keyboardType: TextInputType.name,
                                               style: TextStyle(color: Colors.greenAccent),
                                               
                                              cursorColor: Colors.white,
                                              decoration: InputDecoration(labelText: "Name" ,labelStyle: TextStyle(color: Colors.greenAccent),enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40),borderSide: BorderSide(color: Color(0xFF0A0E21))),border: OutlineInputBorder()),
                                              controller: textclear,
                                              onSaved: (newValue) {
                                                names.insert(0, newValue);
                                               
                                                textclear.clear();
                                              },
                                              validator: (value) {
                                              if(value!.isEmpty)
                                              {
                                                return "Isn't Vaild";
                                              }
                                             
                                                                            
                                            
                                            
                                            }, 
                                            ),
                                            SizedBox(height: 10,),
                                            TextFormField(
                                              keyboardType: TextInputType.phone,
                                               style: TextStyle(color: Colors.greenAccent),
                                              cursorColor: Colors.white,
                                              decoration: InputDecoration(labelText: "Numper" ,labelStyle: TextStyle(color: Colors.greenAccent),enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40),borderSide: BorderSide(color: Color(0xFF0A0E21))),border: OutlineInputBorder()),
                                              controller: text2Clear,
                                            
                                              onSaved: (newValue) {
                                                
                                               numpers.insert(0, newValue);
                                                text2Clear.clear();
                                              },
                                              validator: (value) {
                                              if(value!.isEmpty)
                                              {
                                                return "Isn't Vaild";
                                              }
                                             
                                                                            
                                            
                                            
                                            }, 
                                            ),
                                            SizedBox(height: 10,),
                                             TextFormField(
                                              keyboardType: TextInputType.text,
                                               style: TextStyle(color: Colors.greenAccent),
                                              cursorColor: Colors.white,
                                              decoration: InputDecoration(labelText: "Adress" ,labelStyle: TextStyle(color: Colors.greenAccent),enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40),borderSide: BorderSide(color: Color(0xFF0A0E21))),border: OutlineInputBorder()),
                                              controller: text3Clear,
                                            
                                              onSaved: (newValue) {
                                                
                                               adress.insert(0, newValue);
                                                text3Clear.clear();
                                              },
                                              validator: (value) {
                                              if(value!.isEmpty)
                                              {
                                                return "Isn't Vaild";
                                              }
                                             
                                                                            
                                            
                                            
                                            }, 
                                            ),
                                             SizedBox(height: 10,),
                                             TextFormField(
                                              keyboardType: TextInputType.number,
                                               style: TextStyle(color: Colors.greenAccent),
                                              cursorColor: Colors.white,
                                              decoration: InputDecoration(labelText: "Value" ,labelStyle: TextStyle(color: Colors.greenAccent),enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40),borderSide: BorderSide(color: Color(0xFF0A0E21))),border: OutlineInputBorder()),
                                              controller: text4Clear,
                                            
                                              onSaved: (newValue) {
                                                
                                               values.insert(0, newValue);
                                               
                                                text4Clear.clear();
                                              },
                                              validator: (value) {
                                              if(value!.isEmpty)
                                              {
                                                return "Isn't Vaild";
                                              }
                                             
                                                                            
                                            
                                            
                                            }, 
                                            ),
                                            MaterialButton(child: Text("Add",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),color: Colors.greenAccent ,onPressed: (){
                                               if(checker.currentState!.validate()) {setState(() {

                                                 checker.currentState!.save();
                                                 
                                                 h++;
                                                 Navigator.pop(context);
                                                  });}
                                            })
                                          ],
                                        ),
                                      )),
                                    );
                                  });
                                })
                
              ;}),
    appBar: AppBar(backgroundColor: Colors.greenAccent,title: Text("Train")),
backgroundColor: Color(0xFF0A0E21),
    body:   Column(
      children: [
       
      helper()?Expanded(
      
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.0),),
          child: ListView.separated(
              shrinkWrap: true,
             //   physics:NeverScrollableScrollPhysics() ,
                separatorBuilder: (context, i ) {return Divider(color: Colors.black,thickness: 2.0,);} ,
              
                scrollDirection: Axis.vertical,
           itemCount:h ,
                itemBuilder: (context,i){return InkWell(onTap: () {
                  setState(() {
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                            content: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column( children: [Row(children: [Expanded(child: InkWell(onTap: () {
                            setState(() {
                              collect += double.parse(values[i]);
                            receive.insert(0, "${names[i]}\n${numpers[i]}");
                              h--;
                            names.remove(i);
                             numpers.remove(i);
                            adress.removeAt(i);
                            values.removeAt(i);
                            });
                            
                            Navigator.pop(context);
                          
                                                
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),alignment: Alignment.center,
                            decoration: BoxDecoration(color: Colors.greenAccent,borderRadius: BorderRadius.circular(50)),
                            child: Text("استلم",style: TextStyle(color: Colors.yellow,fontSize: 25,fontWeight: FontWeight.w900),),)),)],),
                            Divider(color: Colors.white,thickness: 2.0,),
                            Row(children: [Expanded(child: InkWell(onTap: () {
                              setState(() {
                                reject0.insert(0, "${names[i]}\n${numpers[i]}");

                               h--;
                            names.remove(i);
                             numpers.remove(i);
                            adress.removeAt(i);
                            values.removeAt(i);
                              });
                             
                               Navigator.pop(context);
                               

                                                      },
                                                      child: Container(
                            margin: EdgeInsets.all(10),alignment: Alignment.center,
                            decoration: BoxDecoration(color: Colors.greenAccent,borderRadius: BorderRadius.circular(50)),
                            child: Text("رفض بدون",style: TextStyle(color: Colors.yellow,fontSize: 25,fontWeight: FontWeight.w900)),)),)],),
                            Divider(color: Colors.white,thickness: 2.0,),
                            Form(
                              key: checker,
                              child: Column(
                                children: [
                                  Row(children: [Expanded(child: InkWell(onTap: () {
                                    setState(() {
                                        Navigator.pop(context);
                                        showDialog(context: context, builder: (context){
                                          return AlertDialog(backgroundColor:Color(0xFF0A0E21) ,content:   SingleChildScrollView(
                                            physics: BouncingScrollPhysics(),
                                            child: Container(margin: EdgeInsets.only(top:200,bottom: 200),alignment: Alignment.center,
                                              child: Form(
                                                key: checker2,
                                                child: Column(
                                                  children: [
                                                    TextFormField(
                                                        keyboardType: TextInputType.number,
                                                         style: TextStyle(color: Colors.greenAccent),
                                                        cursorColor: Colors.white,
                                                        decoration: InputDecoration(labelText: " Refuse Value" ,labelStyle: TextStyle(color: Colors.greenAccent),enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40),borderSide: BorderSide(color: Color(0xFF0A0E21))),border: OutlineInputBorder()),
                                                        controller: text4Clear,
                                                      
                                                        onSaved: (newValue) {
                                                          setState(() {
                                                            collect+=double.parse(newValue!);
                                                                                        refuseval.clear();
                                                                                        rejectval.insert(0, "${names[i]}\n${numpers[i]}\n${newValue}\n");
                                                                                          h--;
                                                                                names.remove(i);
                                                                                 numpers.remove(i);
                                                                                adress.removeAt(i);
                                                                                values.removeAt(i);
                                                          });
                                                        
                                                        },
                                                        validator: (value) {
                                                        if(value!.isEmpty)
                                                        {
                                                          return "Isn't Vaild";
                                                        }
                                                       
                                                                                      
                                                      
                                                      
                                                      }, 
                                                      ),
                                                                             SizedBox(height: 20,),
                                                                            MaterialButton(color: Colors.greenAccent,child: Text("Save",style:TextStyle(color:Color(0xFF0A0E21),fontSize: 20,fontWeight: FontWeight.bold) ,),onPressed: (){
                                                                              refuseval.clear();
                                                                              if(checker2.currentState!.validate()){
                                                                                checker2.currentState!.save();
                                                                              }
                                                                                Navigator.pop(context);
                                                                              print(collect);
                                                                              print(reject0);
                                                                              print(rejectval);
                                                                              print(evasion);
                                                                              print(cancel);
                                                                              print(nores);
                                                                              print(delay);
                                                                            })
                                                
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ), );
                                        });
                                    });   
                                
                                   
                                   
                                                          },
                                                          child: Container(
                                  margin: EdgeInsets.all(10),alignment: Alignment.center,
                                  decoration: BoxDecoration(color: Colors.greenAccent,borderRadius: BorderRadius.circular(50)),
                                  child: Text("رفض ودفع",style: TextStyle(color: Colors.yellow,fontSize: 25,fontWeight: FontWeight.w900)),)),)],),
                               
                                  
                                ],
                              ),
                            ),
                            Divider(color: Colors.white,thickness: 2.0,),
                            Row(children: [Expanded(child: InkWell(onTap: () {
                               setState(() {
                                    delay.insert(0, "${names[i]}\n${numpers[i]}");
                              h--;
                            names.remove(i);
                             numpers.remove(i);
                            adress.removeAt(i);
                            values.removeAt(i);
                              });
                        
                              Navigator.pop(context);
                                                      },
                                                      child: Container(
                            margin: EdgeInsets.all(10),alignment: Alignment.center,
                            decoration: BoxDecoration(color: Colors.greenAccent,borderRadius: BorderRadius.circular(50)),
                            child: Text("تأجيل",style: TextStyle(color: Colors.yellow,fontSize: 25,fontWeight: FontWeight.w900)),)),)],),
                            Divider(color: Colors.white,thickness: 2.0,),
                            Row(children: [Expanded(child: InkWell(onTap: () {
                             setState(() {
                                   nores.insert(0, "${names[i]}\n${numpers[i]}");
                                 h--;
                            names.remove(i);
                             numpers.remove(i);
                            adress.removeAt(i);
                            values.removeAt(i);
                              });
                         
                              Navigator.pop(context);
                                                      },
                                                      child: Container(
                            margin: EdgeInsets.all(10),alignment: Alignment.center,
                            decoration: BoxDecoration(color: Colors.greenAccent,borderRadius: BorderRadius.circular(50)),
                            child: Text("لا يرد",style: TextStyle(color: Colors.yellow,fontSize: 25,fontWeight: FontWeight.w900),)),))],),
                            Divider(color: Colors.white,thickness: 2.0,),
                            Row(children: [Expanded(child: InkWell(onTap: () {
                                setState(() {
                                  h--;
                            names.remove(i);
                             numpers.remove(i);
                            adress.removeAt(i);
                            values.removeAt(i);
                              cancel.insert(0, "${names[i]}\n${numpers[i]}");
                              });
                          
                            
                              Navigator.pop(context);
                                                      },
                                                      child: Container(
                            margin: EdgeInsets.all(10),alignment: Alignment.center,
                            decoration: BoxDecoration(color: Colors.greenAccent,borderRadius: BorderRadius.circular(50)),
                            child: Text("الغاء",style: TextStyle(color: Colors.yellow,fontSize: 25,fontWeight: FontWeight.w900),)))),],),
                            Divider(color: Colors.white,thickness: 2.0,),
                            Row(children: [Expanded(child: InkWell(onTap: () {
                                 setState(() {
                                 evasion.insert(0, "${names[i]}\n${numpers[i]}");
                                 h--;
                            names.remove(i);
                             numpers.remove(i);
                            adress.removeAt(i);
                            values.removeAt(i);
                              });
                           
                            Navigator.pop(context);
                                                      },
                                                      child: Container(
                            margin: EdgeInsets.all(10),alignment: Alignment.center,
                            decoration: BoxDecoration(color: Colors.greenAccent,borderRadius: BorderRadius.circular(50)),
                            child: Text("تهرب",style: TextStyle(color: Colors.yellow,fontSize: 25,fontWeight: FontWeight.w900),))),)],),
                         
                            ],),
                        ),
                      );
                    });
                  });
                },child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),child: ListTile(isThreeLine: true,leading: Text("${values[i]}",style: TextStyle(fontSize: 25,color: Color(0xFF0A0E21),fontWeight: FontWeight.w900),),title:Text("\n${names[i]}",textAlign: TextAlign.right,style: TextStyle(fontSize: 25,color: Color(0xFF0A0E21),fontWeight: FontWeight.w400)) ,subtitle: Text("${numpers[i]}",style: TextStyle(fontSize: 25,color:Color(0xFF0A0E21),fontWeight: FontWeight.w400)),trailing: Text("\n${adress[i]} ",style: TextStyle(fontSize: 20,color: Color(0xFF0A0E21),fontWeight: FontWeight.w900)),),color:Colors.greenAccent));}
          ),
        ),
      ):Expanded(child: Container(alignment: Alignment.center,child: Text("There is no order added",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.greenAccent),),)),
   /*   Expanded(child: Container(alignment: Alignment.center,child: MaterialButton(onPressed: (){

      }),))*/
      ]
    )
  );
    
  
  }
}