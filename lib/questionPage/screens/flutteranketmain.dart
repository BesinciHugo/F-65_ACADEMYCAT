import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'flutteranketleri1.dart';
import 'flutteranketleri2.dart';
import 'flutteranketleri3.dart';
import 'flutteranketleri4.dart';


class SurveyScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SurveyScreenState();
  }

}
class _SurveyScreenState extends State {
  List<String> modules = [
    "1-6 Modül Değerlendirme Anketi",
    "7-11 Modül Değerlendirme Anketi",
    "12-17 Modül Değerlendirme Anketi",
    "18-21 Modül Değerlendirme Anketi"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'Flutter Modül Anketleri',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: buildBody());
  }

  buildBody() {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black
                  ),
                  onPressed: () {
                    if (index == 0) {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => FSurveyScreen()));
                    }
                    else if (index == 1) {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => F2SurveyScreen()));
                    }
                    else if (index == 2) {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => F3SurveyScreen()));
                    }
                    else {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => F4SurveyScreen()));
                    }

                  },
                  child: ListTile(
                    title: Text(modules[index]),
                  ),
                );
              }),
        ),
      ],
    );
  }

}



