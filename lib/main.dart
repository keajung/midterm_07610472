import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calculate.dart';
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

  final _length = TextEditingController();
  final _girth  = TextEditingController();

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
            Text('  ',
                style: TextStyle(
                    fontSize: 36.0, color: Colors.pink.shade600, fontWeight: FontWeight.bold)),

            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _length,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(40.0),
                      filled: true,
                      fillColor: Colors.white.withOpacity(1),
                      //border: OutlineInputBorder(),
                      hintText: 'Enter Length',
                    ),
                  )
                ),
                Container(
                  color: Colors.white.withOpacity(0.0),
                  height: 100,
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _girth,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(40.0),
                      filled: true,
                      fillColor: Colors.white.withOpacity(1),
                      //border: OutlineInputBorder(),
                      hintText: 'Enter Girth',
                    ),
                  )
                ),
              ],
            ),
            Text('  ',
                style: TextStyle(
                    fontSize: 36.0, color: Colors.pink.shade600, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                child: Text('CALCULATE'),
                onPressed: () {
                  var l = _length.text;
                  var g = _girth.text;
                  var text = cal(l,g);

                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Result'),
                        content: Text(text),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
    ),

    );
  }
}