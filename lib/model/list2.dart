import 'package:flutter/material.dart';

class List2 extends StatefulWidget {
  const List2({Key? key}) : super(key: key);

  @override
  _List2State createState() => _List2State();
}
class Result{
  String name;
  String email;
  String username;
  bool isCompleted = false;
  bool isConnected = false;
  int id;
  String url = "url";

  Result( this.name, this.email, this.username, this.isCompleted, this.isConnected, this.id, this.url);

  factory Result.fromJson(dynamic json){
    return Result(
      json["name"] as String,
      json["email"] as String,
      json["username"] as String,
      json["isCompleted"] as bool,
      json["isConnected"] as bool,
      json["id"] as int,
      json["url"] as String,
    );
  }
}
class _List2State extends State<List2> {
  String input = "";
  List mine = [

    Result("Dr Tobi","seyi@yahoo.com","guyman",false,false,1,""),
    Result("Dr Seyi","tobi@yahoo.com","guyjj",true,true,2,""),
    Result("Dr tayo","tayo@yahoo.com","guyyyy",false,true,3,"second"),
    Result("Dr tola","tola@yahoo.com","guyhhh",true,true,4, "third"),
    Result("Dr ayo","ayo@yahoo.com","guyjsjs",true,true,5, "fourth"),

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Doctors informations'),
      ),
      body: ListView.builder(
        itemCount: mine.length,
        itemBuilder: (BuildContext context, int index){

          return Dismissible(
            key: Key(mine[index].email),
            child:  Card(
              child: ListTile(
                title: Text(mine[index].email),
                subtitle: Text(mine[index].name),
                leading: Text(mine[index].id.toString()),
                trailing: IconButton(
                  onPressed: (){

                    Navigator.pushNamed(context, "/${mine[index].url}");

                  },
                  icon: const Icon(
                    Icons.arrow_forward_sharp,
                  ),
                ),
              ),
            ),

          );
        },
      ),

    );

  }
}