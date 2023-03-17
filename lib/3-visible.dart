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
        home: const Visible());
  }
}

class Visible extends StatefulWidget {
  const Visible({Key? key}) : super(key: key);

  @override
  State<Visible> createState() => _VisibleState();
}

class _VisibleState extends State<Visible> {
  //state
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  "visible: $visible",
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.green,
                    side: const BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  onPressed: () {
                    visible = !visible;
                    setState(() {});
                  },
                  child: const Text("Save"),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                if (visible)
                  Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8, top: 2, bottom: 2),
                      child: Column(
                        children: [
                          TextFormField(
                            initialValue: 'John Doe',
                            maxLength: 20,
                            decoration: const InputDecoration(
                              labelText: 'Name',
                              labelStyle: TextStyle(
                                color: Colors.blueGrey,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueGrey,
                                ),
                              ),
                              helperText: "What's your name?",
                            ),
                            onChanged: (value) {},
                          ),
                          TextFormField(
                            initialValue: '123456',
                            maxLength: 20,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Colors.blueGrey,
                              ),
                              suffixIcon: Icon(
                                Icons.password,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueGrey,
                                ),
                              ),
                              helperText: 'Enter your password',
                            ),
                            onChanged: (value) {},
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
