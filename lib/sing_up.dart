import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login In Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _key,
          child: Column(

          children: [
            TextFormField(

              decoration: InputDecoration(
                hintText: "Enter Your Email",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black
                  ),
                  borderRadius: BorderRadius.
                    circular(7),
                ),
              ),
            ),SizedBox(height: 25,),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Your Password",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){

            },
                child: Text("Log In"))
          ],
        ),
      )
    );
  }
}
