import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
String imgsrc1="https://upload.wikimedia.org/wikipedia/commons/3/3f/Flower%28asarfi%29.jpg";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar:AppBar(centerTitle: true,
        title: Text("flower apps",style: TextStyle(
          fontWeight: FontWeight.bold,color: Colors.white,
        ),),
      ),
      body:Center(
        child: Container(
          color: Colors.purpleAccent,
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/image/image2.jpg"),
                Image.asset("assets/image/images.jpg"),
                Container(
                  height:height/3,
                   width:width/2,
                    child: Image.network(imgsrc1)),
                Text("this is a image",style: TextStyle(
                  fontSize: 25,fontWeight: FontWeight.bold,

                ),
                )
              ],
            ),
          ),
        ),
      )

    );
  }
}

