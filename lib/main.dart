import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Image.asset(
                'assets/images/kayuga.png',
                height: 96,
                width: 96,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('Welcome to relation app',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                  )),
            ),
            Container(
              child: Image.asset('assets/images/kayuga.png'),
              margin: EdgeInsets.all(8),
            ),
            Column(
              children: <Widget>[
                RaisedButton(onPressed: ()=>{},
                child: Text('Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                color: Colors.greenAccent,
                elevation: 8,
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
