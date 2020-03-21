import 'dart:async';
import 'dart:convert' show json;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String url = "https://thevirustracker.com/free-api?countryTotal=TR";
  static List data;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var response = await http.get(Uri.decodeFull(url));
    print(response.body);
    setState(() {
      var extractData = json.decode(response.body);
      data = extractData['countrydata'];
      print(data[0]["info"]["title"]);
    });
    return "Success";
  }

  hexColor(String colorHexCode) {
    String colorNew = '0xff' + colorHexCode;
    colorNew = colorNew.replaceAll('#', '');
    int colorInt = int.parse(colorNew);
    return colorInt;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Türkiye\'de Corona Virüs İstatislikleri',
          style: TextStyle(color: Colors.orange, fontSize: 22.0),
        ),
        centerTitle: true,
        elevation: 10.0,
        backgroundColor: Color(hexColor('27496d')),
      ),
      body: Container(
        color: Color(hexColor('#142850')),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.orange,
                        width: 4.0,
                      ),
                    ),
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'Nasıl Korunuruz?',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                      onPressed: (){
                        print('Deneme');
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.black12,
                  width: 4.0,
                ),
                color: Color(hexColor('#84142d')),
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 100.0,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        'Bugün görülen yeni vaka sayisi: ${data[0]["total_new_cases_today"].toString()}',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(hexColor('ffa41b')),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.black12,
                  width: 4.0,
                ),
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 100.0,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.add_circle,
                    color: Colors.black,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        'Bugün vefat eden kişi sayısı: ${data[0]["total_new_deaths_today"].toString()}',
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.black12,
                  width: 4.0,
                ),
                color: Color(hexColor('#84142d')),
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.call_made,
                    color: Colors.white,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        'Bugüne kadar toplam vaka sayısı: ${data[0]["total_active_cases"].toString()}',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.black12,
                  width: 4.0,
                ),
                color: Color(hexColor('ffa41b')),
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.call_made,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      'Bugüne kadar ölen eden kişi sayısı: ${data[0]["total_deaths"].toString()}',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
