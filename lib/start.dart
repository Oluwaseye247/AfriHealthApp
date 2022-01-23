import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/welcome.dart';


class start extends StatefulWidget {
  const start({ Key? key }) : super(key: key);

  @override
  _startState createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Stack(
       children: [
        Container(
          decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/doctor1.webp'),
              fit: BoxFit.cover
          )
      ),
        ),
        Scaffold(
          backgroundColor: Colors.black87,
          body: Column(

            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 350, left: 30, right: 20),
             child: Text('Welcome to',
             style: GoogleFonts.actor(
                       fontSize: 45,
             )
             ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 70, left: 30),
                        child: Text('Afri Health',
                            style: GoogleFonts.actor(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellowAccent
                            )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30, right:70),
                        child: Text('Lets Check Your Health With Us. Care with',
                            style: GoogleFonts.actor(
                              fontSize: 15,
                            )
                        ),
                      ),
                    ],
                  ),
            ]

          ),
             Row(
               children: [
                 Container(
                  padding: EdgeInsets.only(left: 30, right: 40),
                  child: Text('your health From Now To Get  A Better Life',
                  style: GoogleFonts.actor(
                  fontSize: 15,
            ),
            ),
            ),
               ],
             ),
             SizedBox(height: 10,),
            Row(
              children: [

                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: RaisedButton(

                padding: EdgeInsets.fromLTRB(70, 7,  50,  7),
                color: Colors.white24,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const welcome()),
                  );

                },
                child: Center(
                child: Text('Explore',
                style: GoogleFonts.actor(
                  fontSize: 15,
                  color: Colors.yellowAccent,
                ),
             ),
           ),
          ),
                ),
              ],
            )
    ],
    ),
        )
       ]
    );
  }
}