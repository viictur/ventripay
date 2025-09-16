import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:summer_flutter/core/validators.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MyClock extends StatefulWidget {
  const MyClock({super.key});

  @override
  State<MyClock> createState() => _MyClockState();
}

class _MyClockState extends State<MyClock>
    with WidgetsBindingObserver {
  bool isRunning = false;
  int countdown = 0;
  Timer? timer;

  final TextEditingController myController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isChecked = true;

  // @override
  // void initState() {
  //   super.initState();
  //   startTimer();
  //   WidgetsBinding.instance.addObserver(this);
  // }

  // void startTimer() {
  //   isRunning = true;
  //   timer = Timer.periodic(Duration(milliseconds: 1000), (
  //     _,
  //   ) {
  //     setState(() {
  //       countdown++;
  //     });
  //   });
  // }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   if (state == AppLifecycleState.paused ||
  //       state == AppLifecycleState.inactive) {
  //     stopTimer();
  //   } else if (state == AppLifecycleState.resumed) {
  //     //startTimer();
  //   }
  // }

  // void stopTimer() {
  //   timer?.cancel();
  //   isRunning = false;
  // }

  // @override
  // void dispose() {
  //   myController.dispose();
  //   super.dispose();
  //   stopTimer();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(countdown.toString()),
              ElevatedButton(
                onPressed: () {},
                child: Text('Start/Stop timer'),
              ),
              Gap(24),
              Row(
                children: [
                  TextFormField(
                    controller: myController,
                    validator:
                        Validators.validatePassword(),
                    decoration: InputDecoration(
                      hintText: 'Please enter your name',
                      prefixIcon: Icon(Icons.add),
                      suffixIcon: Icon(Icons.ac_unit),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        borderSide: BorderSide(
                          color: Colors.purple,
                        ),
                      ),
                      // contentPadding:
                      //     EdgeInsets.symmetric(
                      //       vertical: 40,
                      //       horizontal: 50,
                      //     ),
                    ),
                    maxLines: 3,
                    cursorColor: Colors.blue,
                  ),
                  //Icon(Icons.abc, size: 50),
                ],
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     if (!formKey.currentState!.validate()) {
              //       print('validate');
              //     } else {
              //       print('validated');
              //     }
              //   },
              //   child: Text('Click'),
              // ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green,
                      blurRadius: 2,
                      spreadRadius: 3,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'hello ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                  children: [
                    TextSpan(
                      text: 'world',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.blue,
                        decoration:
                            TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              SelectableText('this is selectable'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://plus.unsplash.com/premium_photo-1757330257568-c87c189a3a35?q=80&w=1243&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
              ),
              Card(
                elevation: 3,
                child: Text('hello world'),
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueGrey,
                    ),
                    child: Icon(Icons.person),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Icon(Icons.camera_alt_outlined),
                  ),
                ],
              ),
              SwitchListTile(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              FlutterSwitch(
                value: isChecked,
                onToggle: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
