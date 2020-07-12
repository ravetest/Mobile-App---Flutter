import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    //implement create state
    return _LogInScreen();
  }
}

class _LogInScreen extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    //implement build
    return Scaffold(
      backgroundColor: Color(0xff000725),
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 180,
            child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    SizedBox(height: 50,),

                    Text("Log In",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),

                    Text("Welcome to Aapka App",
                      style: TextStyle(color: Colors.white),)

                  ],
                )
            ),

            decoration: BoxDecoration(borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(150)),
                color: Color(0xffff2fc3)
            ),
          ),

          Theme(
            data: ThemeData(
                hintColor: Colors.blue
            ),
            child: Padding
              (padding: EdgeInsets.only(top: 50, right: 20, left: 20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffff2fc3), width: 1),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffff2fc3), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffff2fc3), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffff2fc3), width: 1),
                  ),

                ),
              ),
            ),
          ),

          Theme(
            data: ThemeData(
                hintColor: Colors.blue
            ),
            child: Padding
              (padding: EdgeInsets.only(top: 50, right: 20, left: 20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffff2fc3), width: 1),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffff2fc3), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffff2fc3), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffff2fc3), width: 1),
                  ),

                ),
              ),
            ),
          ),

          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Color(0xffff2fc3),
              child: Text("Login", style: TextStyle(color: Colors.blue,
                  fontWeight: FontWeight.bold, fontSize: 20),),
              padding: EdgeInsets.all(10),
            ),
          ),

          SizedBox(height: 20),

          Container(
            width: double.infinity,
            height: 1,
            color: Colors.blue,
          ),

          Center(
            child: Column(
              children: <Widget>[
                Text("Don't Have an Account?", style: TextStyle(
                    color: Colors.white
                ),),

                SizedBox(height: 10,),

                FlatButton(onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          //builder: (BuildContext context) => SignUpScreen()
                        )
                  );
                },

                  child: Text("Sign Up", style: TextStyle(color: Colors.blue),),

                ),

                Container(
                  width: 45,
                  height: 1,
                  color: Colors.blue,

                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}