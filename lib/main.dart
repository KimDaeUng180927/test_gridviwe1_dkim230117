import 'package:flutter/material.dart';
//import 'package:testflow/clickaletexsheet.dart';
//import 'package:testflow/paint.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(fontFamily: 'OpenSans'),
        ),
        centerTitle: true,
      ),
      body: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                GridView.count(
                  primary: true,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  children: <Widget>[
                    Material(
                      color: Colors.teal[100],
                      child: InkWell(
                        onTap: () {
                          print('1 was clicked');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text("He'd have you all unravel at the"),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.teal[200],
                      child: InkWell(
                        onTap: () {
                          print('2 was clicked');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Heed not the rabble'),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.teal[300],
                      child: InkWell(
                        onTap: () {
                          print('3 was clicked');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Sound of screams but the'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}



