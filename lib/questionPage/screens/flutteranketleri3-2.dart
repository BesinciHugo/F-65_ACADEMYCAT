import 'package:f65jamapp/questionPage/screens/thanks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/questions.dart';


class F3SurveyQScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _F3SurveyQScreenState();
  }

}
class _F3SurveyQScreenState extends State{
  test myTest7 = test();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'Flutter 12-17 Modülleri Anketi',
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
                myTest7.writeQuestion(),
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
                      if(Qn.length-1 > myTest7.active_question) {
                        myTest7.nextQuestion();
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ThanksScreen()));
                        myTest7.active_question = 0;
                      }
                    });
                  },
                  child: Text(myTest7.writeAnswera())
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
                      if(Qn.length-1 > myTest7.active_question) {
                        myTest7.nextQuestion();
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ThanksScreen()));
                        myTest7.active_question = 0;
                      }
                    });
                  },
                  child: Text(myTest7.writeAnswerb())
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
                      if(Qn.length-1 > myTest7.active_question) {
                        myTest7.nextQuestion();
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ThanksScreen()));
                        myTest7.active_question = 0;
                      }
                    });
                  },
                  child: Text(myTest7.writeAnswerc())
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
                      if(Qn.length-1 > myTest7.active_question) {
                        myTest7.nextQuestion();
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ThanksScreen()));
                        myTest7.active_question = 0;
                      }
                    });
                  },
                  child: Text(myTest7.writeAnswerd())
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
                      if(Qn.length-1 > myTest7.active_question) {
                        myTest7.nextQuestion();
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ThanksScreen()));
                        myTest7.active_question = 0;
                      }
                    });
                  },
                  child: Text(myTest7.writeAnswere())
              ),
            ),
          ),
        ]);
  }
}