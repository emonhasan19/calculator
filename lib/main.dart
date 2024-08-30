import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: MyHomePage(),
      title: 'HomePage',
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Card App'),
      ),
      body: Center(
        child:Card(
          color: Colors.greenAccent,
          child: SizedBox(
            height: 200,
            width: 350,
          child: Column(
            children: [
              Container(
                height: 40,
                width: 150,
                color: Colors.white,
                child: Text(
                  'প্রথম সাময়িক পরীক্ষা',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                    fontWeight:FontWeight.bold
                  ),
                ),
              ),
              Container(
                height: 120,
                width: 300,
                color: Colors.greenAccent,
                child: Center(
                  child:
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.phone_android_sharp,
                          size: 70,
                          color: Colors.white,
                        ),
                        Text('Arian Ahamed Emon',
                        style: TextStyle(
                          fontSize: 22
                        ),

                        ),
                      ],
                    )
                  ],
                ),
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    width: 150,
                    color: Colors.white70,
                    //decoration: BoxDecoration(color: Colors.white),
                    child: Center(
                      child: Text(
                      'সকাল ১০ টা',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontWeight:FontWeight.bold
                        ),
                      ),
                    ),

                  ),
                ],
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}
