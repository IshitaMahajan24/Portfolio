import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterFolio"),
        backgroundColor: Colors.purple,
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/dark1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(radius: 60, backgroundImage: AssetImage("assets/mypic.jpg")),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Ishita Mahajan", style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: "fonts/Roboto-Medium.tff")),
                      Text("CS ENTHUSIAST", style: TextStyle(fontSize: 20, color: Colors.white)),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.school, color: Colors.white, size: 30),
                        SizedBox(width: 25),
                        Text("Mata Sundri College", style: TextStyle(fontSize: 20, color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        Icon(Icons.computer_rounded, color: Colors.white, size: 30),
                        SizedBox(width: 20),
                        Text("Skills: C++ & Java", style: TextStyle(fontSize: 20, color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_pin, color: Colors.white, size: 30),
                        SizedBox(width: 20),
                        Text("New Delhi", style: TextStyle(fontSize: 20, color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        Icon(Icons.email, color: Colors.white, size: 30),
                        SizedBox(width: 20),
                        Text("mahajanishita24@gmail.com", style: TextStyle(fontSize: 20, color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        Icon(Icons.phone_android_rounded, color: Colors.white, size: 30),
                        SizedBox(width: 20),
                        Text("9971327229", style: TextStyle(fontSize: 20, color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("ABOUT ME", style: TextStyle(fontSize: 25, color: Colors.white, fontFamily: "fonts/Roboto-Medium.tff")),
                //Text("I am Ishita"),
              ),
              SizedBox(height: 3),
              Text("I am a student at the University of Delhi with a major in Computer Science. I am passionate about learning various upcoming technologies.I want to gain expertise in this field.", style: TextStyle(fontSize: 18, color: Colors.white, fontFamily: "fonts/Roboto-Light.tff")),
              SizedBox(height: 60),
              Text("CREATED BY ISHITA MAHAJAN", style: TextStyle(fontSize: 15, color: Colors.white, fontFamily: "fonts/Roboto-Medium.tff")),
            ],
          ),
        ),
      ),
    );
  }
}
