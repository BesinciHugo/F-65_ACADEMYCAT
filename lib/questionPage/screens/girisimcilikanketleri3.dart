import 'package:f65jamapp/questionPage/screens/uyari.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'girisimcilikanketleri3-2.dart';



class E3SurveyScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _E3SurveyScreenState();
  }

}
class _E3SurveyScreenState extends State{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'Girişimciler için Finans Eğitimi Anketi',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: buildBody());
  }

  buildBody() {
    return Column(
        children: [
          Expanded(
            flex:1,
            child: Center(
              child: Text(
                "Girişimciler için Finans eğitimini tamamladınız mı?",
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => E3SurveyQScreen()));
                        },
                        child: Text('EVET')
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AttenScreen()));
                        },
                        child: Text('HAYIR')
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]);
  }
}