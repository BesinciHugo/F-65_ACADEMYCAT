import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'girisimcilikanketmain.dart';


class Thanks2Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Thanks2ScreenState();
  }

}
class _Thanks2ScreenState extends State{
  var formKey = GlobalKey<FormState>();
  String gorus = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'Flutter 1-6 Modülleri Anketi',
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
                "Anketimize katıldığınız için teşekkür ederiz🤩 "
                    "Eğitimlerle ilgili bize iletmek istediğiniz seyleri aşağıya yazabilirsiniz🤗",
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                buildForm(),
                buildSubmitButton()
              ],
            ),
          ),
        ]);
  }

  buildForm() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Görüşleriniz"),
      maxLength: 200,
      onSaved: (String? value){
        if(value != null) {
          gorus = value;
        }
      },
    );
  }

  buildSubmitButton() {
    return ElevatedButton(
      onPressed: (){
        formKey.currentState?.save();
        Navigator.push(context, MaterialPageRoute(builder: (context) => ESurveyScreen()));
      },
      child: Text("Kaydet"),
    );
  }
}