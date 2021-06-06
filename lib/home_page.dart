
import 'package:flutter/material.dart';
import 'package:idontthing/azkar_page.dart';
import 'package:idontthing/sabha_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.teal,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SabhaPage()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width ,
                        height: MediaQuery.of(context).size.height /2.2,
                        decoration: BoxDecoration(
                            color: Colors.teal.shade700,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text(
                            "السبحة",
                            style: TextStyle(
                                fontSize: 50,
                                fontFamily: 'Mohammad Head',
                                color: Colors.teal.shade50
                            ),
                          ),
                        ),
                      )
                  ),
                ),
                SizedBox(height: 10,),
                Expanded(
                  child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AzkarPage()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width ,
                        height: MediaQuery.of(context).size.height /2.2,
                        decoration: BoxDecoration(
                          color: Colors.teal.shade700,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text(
                              "أذكاري",
                            style: TextStyle(
                              fontSize: 50,
                              fontFamily: 'Mohammad Head',
                              color: Colors.teal.shade50
                            ),
                          ),
                        ),
                      )
                  ),
                )
              ],
            ),
          ),
    );
  }
}
