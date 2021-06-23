import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: FaIcon(
                FontAwesomeIcons.chevronLeft,
              ),
            ),
          ),
          Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.white,
            child: SizedBox(
              width: 400,
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
                    Text('MARUYAMA COFFEE', style: GoogleFonts.sawarabiMincho()
                        //Textstyle
                        ), //Text
                    SizedBox(
                      height: 10,
                    ), //SizedBox
                    Text(
                      'Maruyama Coffee is a speciality coffee company established in 1991, based in Karuizawa, Nagano Prefecture, Japan.',
                      style: GoogleFonts.sawarabiMincho(), //Textstyle
                    ), //Text
                    SizedBox(
                      height: 10,
                    ), //SizedBox
                    SizedBox(
                      width: 80,
                      child: RaisedButton(
                        onPressed: () => null,
                        color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              // Icon(Icons.touch_app),
                              Text('Visit',
                                  style: GoogleFonts.sawarabiMincho()),
                            ],
                          ), //Row
                        ), //Padding
                      ), //RaisedButton
                    ) //SizedBox
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
          ),
          Card(
            child: Text('HELLO'),
          )
        ],
      ),
    ));
  }
}
