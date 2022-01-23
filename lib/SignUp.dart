import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/SignIn.dart';
import 'package:health/home.dart';
import 'package:health/model/list2.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/doctor3.jpg'),
                  fit: BoxFit.cover
              ),

            ),

        ),
    Scaffold(
    backgroundColor: Colors.black87,
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(

      children: [

          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 40),
                height: 180,
                width: 350,
                child: Image(
                 image: AssetImage('assets/afrilogo.png'),
                  ),
                 ),
            ],
          ),





        Row(

          children: [

            Container(
                padding: EdgeInsets.only(left: 35),
                child:  Text('Email',
                  style: GoogleFonts.dongle(
                    fontSize:40,
                  ),
                )
            ),


          ],
        ),
        SizedBox(height: 5,),
        Container(
          height: 40,
          width: 330,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.4)
          ),
          child: TextField(
              decoration: InputDecoration(
                  hintText: "  ",
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  border: InputBorder.none

              )
          ),
        ),
        Row(

          children: [

            Container(
                padding: EdgeInsets.only(left: 35),
                child:  Text('Password',
                  style: GoogleFonts.dongle(
                    fontSize:40,
                  ),
                )
            ),


          ],
        ),
        SizedBox(height: 5,),
        Container(
          height: 40,
          width: 330,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.4)
          ),
          child: TextField(
              decoration: InputDecoration(
                  hintText: "",
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  border: InputBorder.none

              )
          ),
        ),
        Row(

          children: [

            Container(
                padding: EdgeInsets.only(left: 35),
                child:  Text('ReType-Password',
                  style: GoogleFonts.dongle(
                    fontSize:40,
                  ),
                )
            ),


          ],
        ),
        SizedBox(height: 5,),
        Container(
          height: 40,
          width: 330,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.4)
          ),
          child: TextField(
              decoration: InputDecoration(
                  hintText: "",
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  border: InputBorder.none

              )
          ),
        ),
        SizedBox(
          height: 25,
        ),

            RaisedButton(
              padding: EdgeInsets.only(left: 100, right: 100),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const List2()),
                  );
                },
                child: Text('Sign Up',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                ),
                ),
              color: Colors.white,
            ),
            SizedBox(height: 30,),
            Row(

              children: [
                Container(
                  padding: EdgeInsets.only(left: 40),
                 child: Text('already have an account?',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
                 ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    },
                    child: Text('SIGN IN',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.yellowAccent,
    ),
    ),
                    )


              ]
            )
          ],
        ),
    ),
       ),
      ],
    );
  }
}
