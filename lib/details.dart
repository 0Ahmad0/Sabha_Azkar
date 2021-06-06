import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idontthing/textazkar.dart';

class DetailsPage extends StatefulWidget {
  final Zker zker;
  const DetailsPage({Key key, this.zker}) : super(key: key);
  @override
  _DetailsPageState createState() => _DetailsPageState();
}
class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext context,Widget child){
        return new Directionality(textDirection: TextDirection.rtl,
            child:new Builder(builder: (BuildContext context){
              return new MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                  child: child);
            })
        );
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade400,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height -40,
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50)
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height -45,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50)
                        )
                    ),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Text(
                          widget.zker.zker,
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Mohammad Head',
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
