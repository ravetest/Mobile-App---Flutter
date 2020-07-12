import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  String currentEmail;

  HomeScreen(this.currentEmail);

  @override
  _HomeScreenState createState() => _HomeScreenState(currentEmail);
}

class _HomeScreenState extends State<HomeScreen> {
  String currentEmail;

  _HomeScreenState(this.currentEmail);

Firebase.Auth auth= FirebaseAuth.instance;
  Future<void> logOut() async{
    auth.signOut().then((value){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) =>LogInScreen()
        )
      )
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xffff2fc3),
        title: Text("Home"),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: (){
              logout();
            },
            icon: Icon(Icons.person)
              label: Text("Logout")
          )
        ],
      )
    drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Color(0xff000725),
              child: Column(
                children: <Widget>[

    ],
    ),
    )
    ],
    ),
        )
    );
  }
}
