import 'package:decaf/pages/details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find Your Coffee Shop',
      routes: {
        '/': (context) => MyHomePage(title: 'Find Your Coffee Shop'),
        'details': (context) => Details(),
      },
      theme: ThemeData(primaryColor: Colors.white),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [FaIcon(FontAwesomeIcons.bars)],
        toolbarHeight: 100,
        title: SizedBox(child: Image.asset('images/coffeescale.JPG')
            // Text('mama coffee', style: GoogleFonts.biryani(fontSize: 25.0)),
            ),
      ),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(20.0),
            //     child: Container(
            //       child: Text('おいしデカフェをたのしむために',
            //           style: GoogleFonts.sawarabiMincho()),
            //     ),
            //   ),
            // ),
            // TextField(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: 'Shop Name',
            //     suffixIcon: IconButton(
            //       icon: FaIcon(FontAwesomeIcons.search),
            //       onPressed: () {
            //         print('hello');
            //       },
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('コーヒー'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                    textStyle: TextStyle(fontSize: 15.0),
                    primary: Colors.pink[100],
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'details');
                  },
                ),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  child: const Text(''),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                    textStyle: TextStyle(fontSize: 15.0),
                    primary: Colors.white,
                    onPrimary: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'map');
                  },
                ),
              ],
            ),

            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.coffee),
                SizedBox(width: 6),
                Text(
                  '人気記事',
                  style: GoogleFonts.kosugiMaru(),
                ),
              ],
            ),
            Divider(
              indent: 150,
              endIndent: 150,
              color: Colors.black,
              thickness: 2,
              height: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    color: Colors.white,
                    elevation: 10,
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            // Image.asset('images/coffeebean.JPG'),
                            FaIcon(
                              FontAwesomeIcons.bookOpen,
                              size: 50.0,
                            ),
                            //SizedBox
                            Text('コーヒーの淹れ方',
                                style: GoogleFonts.kosugiMaru(fontSize: 10.0)
                                //Textstyle
                                ), //Text
                            //Textstyle
                            //Text
                          ],
                        ), //Column
                      ), //Padding
                    ), //SizedBox
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Card(
                    elevation: 10,
                    color: Colors.white,
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.bookOpen,
                              size: 50.0,
                            ),
                            //SizedBox
                            Text('コーヒーの淹れ方',
                                style: GoogleFonts.kosugiMaru(fontSize: 10.0)
                                //Textstyle
                                ), //Text
                            //Textstyle
                            //Text
                          ],
                        ), //Column
                      ), //Padding
                    ), //SizedBox
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
