import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(),
        home: const Classic());
  }
}

class Classic extends StatefulWidget {
  const Classic({Key? key}) : super(key: key);

  @override
  State<Classic> createState() => _ClassicState();
}

class _ClassicState extends State<Classic> {
  int counter = 0;
  incrementCounter() {
    counter++;
    setState(() {});
    print(counter);
  }

  resetCounter() {
    counter = 0;
    setState(() {});
    print(counter);
  }

  decrementCounter() {
    counter--;
    if (counter < 0) {
      counter = 0;
    }
    setState(() {});
    print(counter);
  }

  /*
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Badge(
                label: Text(
                  "4",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: Icon(Icons.notifications),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        color: Colors.yellow,
        child: Column(
          children: [
            const SizedBox(
              height: 24.0,
            ),
            Text(
              "$counter",
              style: const TextStyle(
                fontSize: 36.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () => incrementCounter(),
                  child: const Text("Tambah"),
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[300],
                  ),
                  onPressed: decrementCounter,
                  child: const Text("Kurang"),
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: resetCounter,
                  child: const Text("Reset"),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

/*
return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Badge(
                label: Text(
                  "4",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: Icon(Icons.notifications),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        color: Colors.yellow,
        child: Column(
          children: const [],
        ),
      ),
      bottomNavigationBar: Container(
        height: 64,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
          ),
          onPressed: () {},
          child: const Text("Checkout"),
        ),
      ),
    );
*/
