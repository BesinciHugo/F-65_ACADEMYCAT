import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'girisimcilikanketleri1.dart';
import 'girisimcilikanketleri2.dart';
import 'girisimcilikanketleri3.dart';
import 'girisimcilikanketleri4.dart';


class ESurveyScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ESurveyScreenState();
  }

}

class _ESurveyScreenState extends State {
  List<String> modules = [
    "Temel Girişimcilik Değerlendirme Anketi",
    "Girişimciler için Hukuk Değerlendirme Anketi",
    "Girişimciler İçin Finans Değerlendirme Anketi",
    "Girişimciler için IK Değerlendirme Anketi"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'Girişimcilik Eğitimi Anketleri',
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
                          builder: (context) => E1SurveyScreen()));
                    }
                    else if (index == 1) {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => E2SurveyScreen()));
                    }
                    else if (index == 2) {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => E3SurveyScreen()));
                    }
                    else {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => E4SurveyScreen()));
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