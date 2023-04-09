import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AttenScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AttenScreenState();
  }

}
class AttenScreenState extends State{

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
      children: [
        Expanded(
          flex:1,
          child: Center(
            child: Text(
              "Lütfen modülü tamamladıktan sonra anketi doldurunuz!",
              style: TextStyle(fontSize: 30.0),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          flex:2,
          child: Center(
            child: Container(
              width: 300,
              height: 300,
              child: Image.network("https://st4.depositphotos.com/1216158/25289/i/600/depositphotos_252892098-stock-photo-red-warning-attention-caution-sign.jpg"),
            ),
          ),
        ),
      ],
    );
  }
}
