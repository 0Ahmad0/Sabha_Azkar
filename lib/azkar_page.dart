
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'details.dart';
import 'textazkar.dart';

class AzkarPage extends StatefulWidget {
  final Zker zker;

  const AzkarPage({Key key, this.zker}) : super(key: key);
  @override
  _AzkarPageState createState() => _AzkarPageState();
}

class _AzkarPageState extends State<AzkarPage> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
       backgroundColor: Colors.teal.shade400,
        body: SafeArea(
          child: ListView(
            primary: false,
            padding: EdgeInsets.only(right: 5),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _bulidAzkar("1", "أذكار الصباح", 1) ,
                  _bulidAzkar("1", "أذكار المساء", 2),
                  _bulidAzkar("1", "دعاء طرد الوسواس", 3),
                  _bulidAzkar("1", " أذكار بعد الصلاة", 4),
                  _bulidAzkar("1", "أذكار الاستيقاظ من النوم ", 5),
                  _bulidAzkar("1", "ما يقال عند النوم", 6),
                  _bulidAzkar("1", "دعاء قضاء الدين", 7),
                  _bulidAzkar("1", "دعاء الاستسقاء", 8),
                  _bulidAzkar("1", "دعاء رؤية الهلال", 9),
                  _bulidAzkar("1", "دعاء كفارة المجلس", 10),
                  _bulidAzkar("1", "ما يقال عند اللباس", 11),
                  _bulidAzkar("1", "دعاء القلق في النوم", 12),
                  _bulidAzkar("1", "دعاء قنوت الوتر", 13),
                  _bulidAzkar("1", "دعاء السفر", 14),
                  _bulidAzkar("1", "دعاء الهم والحزن", 15),
                  _bulidAzkar("1", "دعاء الكرب", 16),
                  _bulidAzkar("1", "الدعاء للميت", 17),
                  _bulidAzkar("1", "ما يقال عند سماع الرعد", 18),
                  _bulidAzkar("1", "الدعاء بعد التشهد الأخير", 19),
                  _bulidAzkar("1", "ما يقال عند سماع الرياح", 20),
                  _bulidAzkar("1", "دعاء الذهاب للمسجد", 21),
                  _bulidAzkar("1", "دعاء دخول المسجد", 22),
                  _bulidAzkar("1", "دعاء الخروج من المسجد", 23),
                  _bulidAzkar("1", "دعاء صلاة الاستخارة", 24),
                  _bulidAzkar("1", "دعاء الخروج من المنزل", 25),
                  _bulidAzkar("1", "دعاء بعد الوضوء", 26),
                  _bulidAzkar("1", "دعاء دخول الخلاء", 27),
                  _bulidAzkar("1", "دعاء الخروج من الخلاء", 28),
                  _bulidAzkar("1", "دعاء الاستفتاح", 29),
                  _bulidAzkar("1", "ما يقال عند سماع الآذان", 30),
                ],
              ),
            ],
          ),
        ),
    )
    );
  }
  Widget _bulidAzkar(String image , String text ,int number){
    return InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage(zker: zker[number-1])
          ));
        },
        child: Container(
          width: MediaQuery.of(context).size.width ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(80),
              topRight: Radius.circular(20)
            ),
            color: Colors.teal.shade800,
          ),
          margin: EdgeInsets.only(top: 0, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 90,
                child: Image(
                  width: 120,
                  height: 300,
                  image: AssetImage("assets/images/"+image+".png"),
                ),
              ),
              Center(
                child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Yassin-Font               (.otf)',
                      fontSize: 20
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 15),
                child: Center(
                  child: Text(
                    "${number}",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Mohammad Head',
                        fontSize: 25
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

