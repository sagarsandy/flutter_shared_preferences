import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preferences',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Shared Preferences'),
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
  // Store values in shared preferences
  _setValues() async {
    SharedPreferences spf = await SharedPreferences.getInstance();
    spf.setString('name', 'Bingo');
    spf.setInt('age', 30);
    spf.setBool('canPlay', true);
    spf.setDouble('height', 5.95);
  }

  // Read values from shared preferences
  _showValues() async {
    SharedPreferences spf = await SharedPreferences.getInstance();
    String name = spf.getString('name') ?? 'default name';
    int age = spf.getInt('age') ?? 18;
    bool canPlay = spf.getBool('canPlay') ?? false;
    double height = spf.getDouble('height') ?? 5.55;

    print("Name is $name");
    print("$name age is $age");
    print("$name can play cricekt..? $canPlay");
    print("$name height is $height");

    // If u want to check key exist or not in shared preferences
    bool keyExist = spf.containsKey('names');
    print("Key is exist:  $keyExist");
  }

  // Remove values in shared preferences
  _removeValues() async {
    SharedPreferences spf = await SharedPreferences.getInstance();
    spf.remove('name');
    spf.remove('age');
    spf.remove('canPlay');
    spf.remove('height');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FloatingActionButton(
              onPressed: _setValues,
              tooltip: 'Set Values',
              child: Icon(Icons.group_work),
            ),
            FloatingActionButton(
              onPressed: _showValues,
              tooltip: 'Show Values',
              child: Icon(Icons.info),
            ),
            FloatingActionButton(
              onPressed: _removeValues,
              tooltip: 'Remove Values',
              child: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
