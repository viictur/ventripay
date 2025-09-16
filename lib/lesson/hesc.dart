import 'package:flutter/material.dart';

class MyTextDemo extends StatefulWidget {
  @override
  _MyTextDemoState createState() => _MyTextDemoState();
}

class _MyTextDemoState extends State<MyTextDemo> {
  final TextEditingController myController =
      TextEditingController();

  @override
  void dispose() {
    myController
        .dispose(); // clean up when widget is removed
    super.dispose();
  }

  List<String> fruits = ["Apple", "Lettuce", "Orange"];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  labelText: 'Enter name',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(
                    "Current text: ${myController.text}",
                  );
                },
                child: Text("Get Text"),
              ),
              ElevatedButton(
                onPressed: () {
                  myController.text =
                      "Hello Flutter"; // set text programmatically
                },
                child: Text("Set Text"),
              ),
              ElevatedButton(
                onPressed: () {
                  myController.clear(); // clear text
                },
                child: Text("Clear"),
              ),

              DropdownButton<String>(
                value: selectedValue,
                hint: Text("Select an option"),
                items: ["One", "Two", "Three"].map((item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (value) {
                  selectedValue = value;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
