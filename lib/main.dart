import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mobile Labs 01'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Row"),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.redAccent,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.yellowAccent,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.greenAccent,
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text("Column"),
            const SizedBox(height: 8),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.redAccent,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.yellowAccent,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.greenAccent,
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text("ListView"),
            const SizedBox(height: 8),
            Container(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    height: 80,
                    width: 80,
                    color: getColorIndex(index),
                  );
                },
              ),
            ),
            const SizedBox(height: 8),
            const Text("GridView"),
            const SizedBox(height: 8),
            GridView.count(
              primary: false,
              shrinkWrap: true,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: const Text("He'd have you all unravel at the"),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: const Text('Heed not the rabble'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[300],
                  child: const Text('Sound of screams but the'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[400],
                  child: const Text('Who scream'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[500],
                  child: const Text('Revolution is coming...'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: const Text('Revolution, they...'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Color getColorIndex(int index) {
    switch (index) {
      case 0:
        return Colors.redAccent;
      case 1:
        return Colors.yellowAccent;
      case 2:
        return Colors.greenAccent;
      case 3:
        return Colors.blueAccent;
      case 4:
        return Colors.pinkAccent;
      default:
        return Colors.black12;
    }
  }
}
