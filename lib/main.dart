import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  HomePage({Key? key}) : super(key: key);

  final _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text('PIG WEIGHT',
                style: TextStyle(
                    fontSize: 30.0, color: Colors.pink.shade300 ,fontWeight: FontWeight.bold)),
            Text('CALCULATOR',
                style: TextStyle(
                    fontSize: 30.0, color: Colors.pink.shade300, fontWeight: FontWeight.bold)),
            Text('  ',
                style: TextStyle(
                    fontSize: 36.0, color: Colors.pink.shade600, fontWeight: FontWeight.bold)),

            Image.asset('assets/images/pig.png', width: 300.0),

            //SizedBox(width: 8.0),


            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _controller,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(1),
                      //border: OutlineInputBorder(),
                      hintText: 'Enter Length',
                    ),
                  )
                ),
                Container(
                  color: Colors.white,
                  height: 100,
                  width: 50,
                ),
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _controller,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(1),
                      //border: OutlineInputBorder(),
                      hintText: 'Enter Girth',
                    ),
                  )
                ),
              ],
            ),
          ],
        ),
    ),

    );
  }
}