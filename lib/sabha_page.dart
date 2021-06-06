
import 'package:flutter/material.dart';

class SabhaPage extends StatefulWidget {
  @override
  _SabhaPageState createState() => _SabhaPageState();
}

class _SabhaPageState extends State<SabhaPage> {
  int numbercount= 0;
  int counter = 0;
  bool isclick1=true;
  bool isclick2=false;
  bool isclick3=false;
  bool isclick4=false;
  bool isclick5=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade300,
      body: Column(
        children: [
          SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FlatButton(
                  onPressed: (){
    setState(() {
      numbercount= 33;
      if(counter<numbercount){

      }else{
        counter=0;
      }
      isclick1=true;
      isclick2 = isclick3 = isclick4 = isclick5 = false;
    });
    },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: isclick1?Colors.black54:Colors.white,
                borderRadius: BorderRadius.circular(100)
            ),
          ),
          SizedBox(width: 10,),
          Text("33",style: TextStyle(
              fontSize: 20
          ),)
        ],
      ),
    ),
                  FlatButton(
                  onPressed: (){
    setState(() {
    numbercount= 100;
    if(counter<numbercount){

    }else{
      counter=0;
    }
    isclick2=true;
    isclick1 = isclick3 = isclick4 = isclick5 = false;
    });
    },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: isclick2?Colors.black54:Colors.white,
                borderRadius: BorderRadius.circular(100)
            ),
          ),
          SizedBox(width: 10,),
          Text("100",style: TextStyle(
              fontSize: 20
          ),)
        ],
      ),
    ),
                  FlatButton(
                    onPressed: (){
                      setState(() {
                        numbercount= 200;
                        if(counter<numbercount){

                        }else{
                          counter=0;
                        }
                        isclick3=true;
                        isclick2 = isclick1 = isclick4 = isclick5 = false;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: isclick3?Colors.black54:Colors.white,
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text("200",style: TextStyle(
                            fontSize: 20
                        ),)
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: (){
                      setState(() {
                        numbercount= 300;
                        if(counter<numbercount){

                        }else{
                          counter=0;
                        }
                        isclick4=true;
                        isclick2 = isclick3 = isclick1 = isclick5 = false;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: isclick4?Colors.black54:Colors.white,
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text("300",style: TextStyle(
                            fontSize: 20
                        ),)
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: (){
                      setState(() {
                        numbercount= 1000;
                        if(counter<numbercount){

                        }else{
                          counter=0;
                        }
                        isclick5=true;
                        isclick2 = isclick3 = isclick4 = isclick1 = false;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: isclick5?Colors.black54:Colors.white,
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text("1000",style: TextStyle(
                            fontSize: 20
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          FlatButton(
            onPressed: (){
              setState(() {
                counter++;
                if(counter==numbercount){
                  counter=0;
                  
                }
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.74,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(counter.toString(),
                  style: TextStyle(fontSize: 40,color: Colors.white,fontFamily: 'Cocon® Next Arabic-Regular'),),
                  Center(
                      child: Icon(Icons.touch_app_rounded,size: 50,),
                    ),
                ],
              ),
              ),
          ),
        ],
      ),
    );
  }
}
