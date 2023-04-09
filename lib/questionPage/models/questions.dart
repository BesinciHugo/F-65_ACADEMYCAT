List<Questions> Qn = [
  Questions(question: "Modülleri açıklayıcılık açısından 5 üzerinden değerlendirir misiniz?", a: "5😍", b: "4😊", c: "3🤨", d: "2😐", e: "1😞"),
  Questions(question: "Modülleri zaman kullanımı açısından 5 üzerinden değerlendirir misiniz?", a: "5😍", b: "4😊", c: "3🤨", d: "2😐", e: "1😞"),
  Questions(question: "Modülleri konuların kapsamı açısından 5 üzerinden değerlendirir misiniz?", a: "5😍", b: "4😊", c: "3🤨", d: "2😐", e: "1😞"),
];

class test{
  int active_question = 0;
  void nextQuestion(){
    active_question++;
  }
  String writeQuestion(){
    return Qn[active_question].Question;
  }
  String writeAnswera(){
    return Qn[active_question].A;
  }
  String writeAnswerb(){
    return Qn[active_question].B;
  }
  String writeAnswerc(){
    return Qn[active_question].C;
  }
  String writeAnswerd(){
    return Qn[active_question].D;
  }
  String writeAnswere(){
    return Qn[active_question].E;
  }

}

class Questions{
  String Question = "";
  String A = "";
  String B = "";
  String C = "";
  String D = "";
  String E = "";
  Questions({required String question, required String a, required String b, required String c, required String d, required String e}){
    Question = question;
    A = a;
    B = b;
    C = c;
    D = d;
    E = e;
  }
}