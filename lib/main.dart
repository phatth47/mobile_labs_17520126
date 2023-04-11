import 'package:flutter/material.dart';
import 'package:mobile_labs_17520126/personal_salary.dart';

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
      home: const MyHomePage(title: 'Mobile Labs 02'),
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
  final nameController = TextEditingController();
  final grossSalaryController = TextEditingController();
  List<PersonalSalary> listPersonalSalary = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Text(
            "Full Name",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: "Please enter full name",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Gross Salary",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: grossSalaryController,
            decoration: const InputDecoration(
              labelText: "Please enter gross salary",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.center,
            child: OutlinedButton(
              onPressed: handleListPersonal,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
              child: const Text(
                "Calculate",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: listPersonalSalary.length,
            itemBuilder: (context, index) {
              return personSalWidget(listPersonalSalary[index]);
            },
          )
        ],
      ),
    );
  }

  Widget personSalWidget(PersonalSalary per) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            per.fullName ?? "",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(" - "),
          const Text(
            " Net Salary:  ",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            "${per.netSalary}",
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  void handleListPersonal() {
    final newPersonalSal = PersonalSalary(
      fullName: nameController.text,
      grossSalary: int.parse(grossSalaryController.text),
    );

    setState(() {
      listPersonalSalary.add(newPersonalSal);
      nameController.clear();
      grossSalaryController.clear();
    });
  }
}
