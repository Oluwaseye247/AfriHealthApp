import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/SignUp.dart';
import 'package:health/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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

                Container(
                  padding: EdgeInsets.only(left: 50),
                  height: 200,
                  width: 400,
                  child: Image(
                    image: AssetImage('assets/afrilogo.png'),
                  ),
                ),

                SizedBox(
                  height: 20,
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

                SizedBox(
                  height: 40,
                ),

                RaisedButton(
                  padding: EdgeInsets.only(left: 100, right: 100),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const home()),
                    );
                  },
                  child: Text('Sign In',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87
                    ),
                  ),
                  color: Colors.white,
                ),
                  SizedBox(
                    height: 160,
                  ),
                  Row(

             children: [
              Container(
               padding: EdgeInsets.only(left: 70),
                child: Text('Already Have An account?',
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
                ),

              ],
            ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  padding: EdgeInsets.only(left: 100, right: 100),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  },
                  child: Text('SIGN UP',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  color: Colors.white,
                )
    ]
          ),
        ),

    ),
    ]
    );

  }
}
