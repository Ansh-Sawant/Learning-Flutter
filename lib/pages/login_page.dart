import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formkey.currentState!.validate()){
    setState(() {
      changeButton = true;
    });

    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
  }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(


        child: Form(
          key: _formkey,
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

                    validator: (value) {
                      if(value!.isEmpty){
                        return "Username cannot be empty";
                      }

                      return null;
                    },

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

                    validator: (value) {
                      if(value!.isEmpty){
                        return "Password cannot be empty";
                      } else if(value.length < 6){
                        return "Password length should be less than 6";
                      }

                      return null;
                    },
                  ),
                  SizedBox(
                    height:50.0,
                  ),


                  Material(
                    borderRadius: BorderRadius.circular(changeButton?60: 8),
                    color: Colors.blue,

                    child: InkWell(
                      onTap: () => moveToHome(context) ,
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
                      ),
                    ),
                  ),


                ],),
              )
              
            ],
          ),
        ),


      )
    );
  }
}