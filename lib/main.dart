//import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Felix Demo',
      theme: ThemeData( ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 240, 240),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 242, 242),
        title: Padding(
          padding: const EdgeInsets.only(left:152.0),
          child: Text('ceisy',
          style: TextStyle(
            color: Color.fromARGB(255, 10, 10, 10),
            fontWeight: FontWeight.bold,
          ),
          ),
          
        ),
        elevation: 0,
      ),
       body: Center(
         child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:100.0),
              child: CircleAvatar(
                backgroundImage:NetworkImage("data:image/png;base64,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") ,
                radius: 70,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text("cryptocurrency \n    made easy",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            
            SizedBox(
              height: 60,
            ),
            Text("start exploring the crypto world now \n   with our app it's easy and secure",
            style: TextStyle(
              fontSize: 15,
            ),),
            SizedBox(
              height: 100,
            ),
            Text("- - - -",
           style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.blue
           )),
           SizedBox(
            height: 80,
           ),

           Container(
            height: 40,
            width: 150,
            //color: Colors.blue,
            
            decoration: BoxDecoration(
              color: Colors.green,
            borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Create a profile",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white
              ),),
            ),
           )
            
          ],
         ),
       ),
    );
  }
}

