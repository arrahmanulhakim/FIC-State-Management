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
        home: const Loading());
  }
}

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  bool loading = false; //initialized variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () async {
              loading = true;
              setState(() {});
              await Future.delayed(const Duration(seconds: 2));
              loading = false;
              setState(() {});
            },
            child: const Text("Refresh"),
          ),
        ],
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    "loading: $loading",
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  // if (loading == true) const CircularProgressIndicator(),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 20,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              backgroundImage: const NetworkImage(
                                "https://i.ibb.co/QrTHd59/woman.jpg",
                              ),
                            ),
                            title: const Text("Jessica Doe"),
                            subtitle: const Text("Programmer"),
                          ),
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
