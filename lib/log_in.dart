import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
String _email="rana@gmail.com";
String _password="12345";
final _kew=GlobalKey<FormState>();
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
        title:Text ("Log In Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key:_kew,
          child: Column(
            children: [
              TextFormField(
                validator: (text){
                  if(text==null ||text.isEmpty)
                    {
                      return "Field is empty";
                    }
                  },
                decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.
                      circular(7),
                  )
                ),
              ),SizedBox(height: 25,),

              TextFormField(
                validator: (text){
                  if(text==null ||text.isEmpty)
                  {
                    return "Field is empty";
                  }
                },
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                  )
                ),
              ),SizedBox(
                height: 25,
              ),
              ElevatedButton(onPressed: (){
                _kew.currentState!.validate();

              },
                  child: Text("Log In"))
            ],
          ),
        ),
      ),
    );
  }
}
