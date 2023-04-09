import 'package:f65jamapp/questionPage/screens/thanks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/questions.dart';

class F2SurveyQScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _F2SurveyQScreenState();
  }

}
class _F2SurveyQScreenState extends State{
  test myTest6 = test();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'Flutter 7-11 Modülleri Anketi',
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
                myTest6.writeQuestion(),
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    fixedSize: Size(200, 30),
                  ),
                  onPressed: (){
                    setState(() {
                      if(Qn.length-1 > myTest6.active_question) {
                        myTest6.nextQuestion();
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ThanksScreen()));
                        myTest6.active_question = 0;
                      }
                    });
                  },
                  child: Text(myTest6.writeAnswera())
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    fixedSize: Size(200, 30),
                  ),
                  onPressed: (){
                    setState(() {
                      if(Qn.length-1 > myTest6.active_question) {
                        myTest6.nextQuestion();
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ThanksScreen()));
                        myTest6.active_question = 0;
                      }
                    });
                  },
                  child: Text(myTest6.writeAnswerb())
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: Size(200, 30),
                  ),
                  onPressed: (){
                    setState(() {
                      if(Qn.length-1 > myTest6.active_question) {
                        myTest6.nextQuestion();
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ThanksScreen()));
                        myTest6.active_question = 0;
                      }
                    });
                  },
                  child: Text(myTest6.writeAnswerc())
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    fixedSize: Size(200, 30),
                  ),
                  onPressed: (){
                    setState(() {
                      if(Qn.length-1 > myTest6.active_question) {
                        myTest6.nextQuestion();
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ThanksScreen()));
                        myTest6.active_question = 0;
                      }
                    });
                  },
                  child: Text(myTest6.writeAnswerd())
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    fixedSize: Size(200, 30),
                  ),
                  onPressed: (){
                    setState(() {
                      if(Qn.length-1 > myTest6.active_question) {
                        myTest6.nextQuestion();
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ThanksScreen()));
                        myTest6.active_question = 0;
                      }
                    });
                  },
                  child: Text(myTest6.writeAnswere())
              ),
            ),
          ),
        ]);
  }
}