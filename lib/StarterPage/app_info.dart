import 'package:f65jamapp/StarterPage/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


final Uri _url = Uri.parse('https://www.linkedin.com/in/alperenk%C3%B6se/');
final Uri _url2 = Uri.parse('https://www.linkedin.com/in/irem-nur-tasci/');
final Uri _url3 = Uri.parse('https://www.linkedin.com/in/nisa-y%C4%B1ld%C4%B1z-ba4259216/');
final Uri _url4 = Uri.parse('https://www.linkedin.com/in/relre/');
final Uri _url5 = Uri.parse('https://www.linkedin.com/in/semanur-%C3%B6zy%C4%B1lmaz-7b081221b/');



class appinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("ACADEMYCAT"),
      ),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                    color: Color.fromRGBO(199, 233, 176, 1),
                  ),
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(20.0),
                  child: const Text(
                    'OUA - Game App Jam 2023 Takım: F-65',
                    textAlign: TextAlign.center,
                  )),
              const Text(
                textAlign: TextAlign.center,
                'Alperen Köse (Developer)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              IconButton(onPressed: _launchURl1, icon:  const Icon(Icons.code),),
              const Text(
                textAlign: TextAlign.center,
                'İrem Nur Taşci(Developer)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              IconButton(onPressed: _launchURl2, icon:  const Icon(Icons.code)),
              const Text(
                textAlign: TextAlign.center,
                'Nisa Yıldız(Designer)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              IconButton(onPressed: _launchURl3, icon:  const Icon(Icons.code)),
              const Text(
                textAlign: TextAlign.center,
                'Okan Patır(Designer)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              IconButton(onPressed: _launchURl4, icon:  const Icon(Icons.code)),
              const Text(
                textAlign: TextAlign.center,
                'Semanur Özyılmaz(Developer)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              IconButton(onPressed: _launchURl5, icon:  const Icon(Icons.code)),
              Container(
                height: 50,
                width: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 140,
                        height: 45,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.announcement,
                            size: 30,
                          ),
                          label: const Text(""),
                        )),
                    SizedBox(
                        width: 140,
                        height: 45,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => mainPage()),
                            );
                          },
                          icon: const Icon(
                            Icons.account_balance_sharp,
                            size: 30,
                          ),
                          label: const Text(""),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

Future<void> _launchURl1() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

Future<void> _launchURl2() async {
  if (!await launchUrl(_url2)) {
    throw Exception('Could not launch $_url2');
  }
}

Future<void> _launchURl3() async {
  if (!await launchUrl(_url3)) {
    throw Exception('Could not launch $_url3');
  }
}

Future<void> _launchURl4() async {
  if (!await launchUrl(_url4)) {
    throw Exception('Could not launch $_url4');
  }
}

Future<void> _launchURl5() async {
  if (!await launchUrl(_url5)) {
    throw Exception('Could not launch $_url5');
  }
}