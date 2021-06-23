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
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
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
        title: SizedBox(
          child: Text('mama coffee', style: GoogleFonts.dokdo(fontSize: 50)),
        ),
        toolbarHeight: 60,
      ),
      body: Scrollbar(
        child: ListView(
          children: [
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(20.0),
            //     child: Container(
            //       child: Text('おいしいデカフェをたのしむために',
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
                    primary: Colors.teal,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: Colors.white,
                  child: SizedBox(
                    width: 230,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white38,
                            radius: 58,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://i2.wp.com/exhibit-at.com/wp-content/uploads/2014/04/maruyama-coffee-logo.png?w=350&ssl=1"), //NetworkImage
                              radius: 50,
                            ), //CircleAvatar
                          ), //CirclAvatar
                          SizedBox(
                            height: 10,
                          ), //SizedBox
                          Text('MARUYAMA COFFEE',
                              style: GoogleFonts.sawarabiMincho()
                              //Textstyle
                              ), //Text
//SizedBox
                        ],
                      ), //Column
                    ), //Padding
                  ), //SizedBox
                ),
                Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: Colors.white,
                  child: SizedBox(
                    width: 230,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white38,
                            radius: 58,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://i2.wp.com/exhibit-at.com/wp-content/uploads/2014/04/maruyama-coffee-logo.png?w=350&ssl=1"), //NetworkImage
                              radius: 50,
                            ), //CircleAvatar
                          ), //CirclAvatar
                          SizedBox(
                            height: 10,
                          ), //SizedBox
                          Text('MARUYAMA COFFEE',
                              style: GoogleFonts.sawarabiMincho()
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
          ],
        ),
      ),
    );
  }
}
