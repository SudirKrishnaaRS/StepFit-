import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Count Streak',
      home: MyHomePage(title: 'Count Streak 🔥'),
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
  int _counter = 0;
  int tot=0;
  void _incrementCounter() {
    setState(() {
      _counter++;
      tot=_counter*120;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: CupertinoColors.systemRed,
      ),
      backgroundColor: Colors.white10,
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft, //specifies where to begin
                end: Alignment.bottomRight, //specifies where to end
                stops: [
                  0.1,
                  0.8
                ], //stops specifies how much the colors     must be displayed i.e)their proportion
                // if 4 colors are specified below   then values is must
                colors: [Colors.redAccent, Colors.deepOrangeAccent],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    child: Text('SK'),
                  ),
                  label: Text('Sudir Krishnaa RS'),
                ),
                Image(
                  image: AssetImage('images/Workout-rafiki.png'),
                  height: 350.0,
                ),
                Center(
                  child: Text(
                    'CURRENT STEP ROUND',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Center(
                  child: Text(
                    'Total Steps  $tot',
                    //style: Theme.of(context).textTheme.headline5,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        //tooltip: 'Increment',
        child: Icon(Icons.directions_run),
        backgroundColor: Colors.red[400],
        autofocus: true,
      ),
      bottomNavigationBar:BottomAppBar(
        color: CupertinoColors.systemRed,
        child: Container(height: 50.0,),
      ) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
