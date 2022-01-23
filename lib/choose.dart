import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/SignIn.dart';
import 'package:health/SignUp.dart';

class choose extends StatelessWidget {
  const choose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Column(
        children: [

             Row(
               children: [
                 Container(
                   padding: EdgeInsets.only(top: 80, left: 120),
                     child: Text('Welcome!!',
                     style: TextStyle(
                         fontSize: 30,
                         color: Colors.white60
                     ))),
               ],
             ),
          SizedBox(
            height: 25,
          ),


          Container(
            margin: EdgeInsets.only(left: 90),
            height: 150,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              color: Colors.yellowAccent,

            ),
          ),
          SizedBox(
            height: 25,

          ),
          Row(
            children: [
              Container(

                padding: EdgeInsets.only(right: 20),
                height: 150,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Colors.yellowAccent,

                ),

                child: Column(

               children: [
                 Container(
                     padding: EdgeInsets.only(top: 25, left: 17),
                      child: Text('Treatement From',
                      style: GoogleFonts.actor(
                      fontSize: 24,
                          color: Colors.black
                   ),
                      ),

                 ),
                 SizedBox(height: 4,),
                 Container(
                   padding: EdgeInsets.only(left: 28),
                   child: Text('The Best Specialist Around The World',
                     style: GoogleFonts.actor(
                         fontSize: 24,
                       color: Colors.black,
                     ),
                   ),
                 ),

                 ],
               )


              ),

            ],
          ),
          SizedBox(height: 25,),
       Divider(),
          Text('Getting Started',
            style: GoogleFonts.actor(
                fontSize: 24
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 50),
            child: RaisedButton(

              color: Colors.white,
              padding: EdgeInsets.fromLTRB(70, 7,  80,  7),

              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              },
              child: Center(
                child: Text('Sign Up',
                  style: GoogleFonts.lato(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 50),
            child: RaisedButton(

              color: Colors.white,
              padding: EdgeInsets.fromLTRB(70, 7,  80,  7),

              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignIn()),
                );
              },
              child: Center(
                child: Text('Sign In',
                  style: GoogleFonts.lato(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
