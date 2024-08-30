import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  //
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: MyHomeScreen(),
      title: 'HomeScreen',
    );
  }
}
class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {

  final TextEditingController _fristNumTEcontroller = TextEditingController();
  final TextEditingController _secondNumTEcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Calculator',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller:_fristNumTEcontroller,
              decoration: InputDecoration(
                label: Text('Num1'),
                hintText: 'Num1'),
              ),
            TextField(
              controller:_secondNumTEcontroller,
              decoration: InputDecoration(
                label: Text('Num2'),
                hintText: 'Num2'),
              ),
            SizedBox(
              height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                IconButton(onPressed: (){}, icon: Text('÷', style: TextStyle(fontSize: 24.0)),),
                IconButton(onPressed: (){},icon: Text('*', style: TextStyle(fontSize: 24.0)),)
              ],
            ),
            SizedBox(
              height: 20,),

            GestureDetector(
              onTap: (){

              },
              child: Text(
                'Result:'
              ),
            )
          ],
        ),
      ),
    );
  }
}
