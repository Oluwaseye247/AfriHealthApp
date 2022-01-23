import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/choose.dart';
class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Column(

          children: [

            Row(

              children: [

                Container(
        padding: EdgeInsets.only(top: 100, left: 75),
                  child: Text('Say Hello To Your',
                  style: GoogleFonts.actor(
                  fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white

        )
      ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Text('Healthcare Partner',
            style: GoogleFonts.actor(
              fontSize: 35,
              fontWeight: FontWeight.bold,
                color: Colors.white
            ),
            ),
            SizedBox(height: 25,),
            Text('Now it easy and faster to make Appointment',
              style: GoogleFonts.actor(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white60
              ),
            ),
            SizedBox(height: 5,),
            Text('With Your Doctors',
              style: GoogleFonts.actor(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white60
              ),
            ),
            SizedBox(height: 40,),
            Container(
              height: 400,
              width: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/doc4.png')
                ),
              ),

            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30, right: 50),
                  child: RaisedButton(
                    color: Colors.yellowAccent,
                    padding: EdgeInsets.fromLTRB(70, 7,  80,  7),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const choose()),
                      );
                    },
                    child: Center(
                      child: Text('Continue',
                        style: GoogleFonts.actor(
                          fontSize: 15,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
         ],
    ),
      ),
    );
  }
}
