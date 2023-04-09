import 'package:f65jamapp/questionPage/screens/flutteranketmain.dart';
import 'package:f65jamapp/questionPage/screens/girisimcilikanketmain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class questionnairePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen());

  }
}

class MainScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainScreenState();
  }

}
class _MainScreenState extends State {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'ACADEMICAT ANKETLERIM',
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
          child: Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  fixedSize: Size(300, 100),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SurveyScreen()));
                },
                child: Text("Flutter Eğitimi Anketleri")
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  fixedSize: Size(300, 100),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ESurveyScreen()));
                },
                child: Text("Teknoloji Girişimciliği Anketleri")
            ),
          ),
        ),
      ],
    );
  }

}
