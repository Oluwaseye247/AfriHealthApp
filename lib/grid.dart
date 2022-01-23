import 'package:flutter/material.dart';
import 'package:health/start.dart';
import 'package:health/model/list.dart';


class grid extends StatefulWidget {

  @override
  _gridState createState() => _gridState();
}

class _gridState extends State<grid> {
  @override
  void initState() {
    super.initState();
    _navigatetostart();
  }

  _navigatetostart() async {
    await Future.delayed(Duration(milliseconds: 20000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => start()

      ),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Our world-wide Doctors',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
            color: Colors.white
        ),
        ),
        centerTitle: true,
      ),
      body: GridView.count(
          crossAxisCount: 3,
        children: [...myImagesAdapted],
      ),
    );
  }
}



