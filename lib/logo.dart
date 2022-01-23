import 'package:flutter/material.dart';
import 'package:health/grid.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override  
  void initState() {
      super.initState();
    _navigatetostart();
  }

  _navigatetostart() async {
     await Future.delayed(Duration(milliseconds: 9000), () {});
     Navigator.pushReplacement(
         context,
       MaterialPageRoute(
         builder: (context) => grid()

     ),
     );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 350,
              width: 350,
              child: Image(
                image: AssetImage('assets/afrilogo.png')
              ),
            ),
          ]
        ),
      )
    );
  }
}
