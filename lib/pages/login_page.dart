import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              height: 300,
            ),
            SizedBox(
              height:20.0,
            ),
            Text("Welcome $name", style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height:20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "User",
                  ),
                  onChanged: (value){
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height:50.0,
                ),
                InkWell(
                  onTap: () async {                    
                    setState(() {
                      changeButton = true;
                    });

                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton?60: 120,
                    height: 50,                  
                    alignment: Alignment.center,
                    child: changeButton ? Icon(
                      Icons.done,
                      color: Colors.white,
                      ) : Text(
                      "Submit",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(changeButton?60: 8)
                    ),
                  ),
                ),
                // ElevatedButton(
                //   child: Text("Login"),
                //   style: TextButton.styleFrom(minimumSize: Size(120, 50) ),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                // )
              ],),
            )
            
          ],
        ),
      )
    );
  }
}