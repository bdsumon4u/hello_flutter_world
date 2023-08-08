// ...

import 'package:flutter/material.dart';

class MyAppState extends ChangeNotifier {}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Namer App')),
      body: Container(
        color: Colors.blueGrey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  color: Color(0xFFE0E0E0),
                  child: SizedBox(
                    width: 340,
                    height: 70,
                    child: Text("Display"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputButton(inp: "AC"),
                InputButton(inp: "C"),
                InputButton(inp: "<"),
                InputButton(inp: "/"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputButton(inp: "9"),
                InputButton(inp: "8"),
                InputButton(inp: "7"),
                InputButton(inp: "*"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputButton(inp: "6"),
                InputButton(inp: "5"),
                InputButton(inp: "4"),
                InputButton(inp: "-"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputButton(inp: "3"),
                InputButton(inp: "2"),
                InputButton(inp: "1"),
                InputButton(inp: "+"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputButton(inp: "+/-"),
                InputButton(inp: "0"),
                InputButton(inp: "00"),
                InputButton(inp: "="),
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class InputButton extends StatelessWidget {
  String inp;

  InputButton({
    super.key,
    required this.inp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        width: 70,
        height: 70,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            inp,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// ...
