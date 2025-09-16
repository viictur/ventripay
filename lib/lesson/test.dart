import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:gap/gap.dart';
import 'package:summer_flutter/core/snackbar.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Gap(20),
            FlutterSwitch(
              width: 35,
              height: 20,
              activeToggleColor: Colors.red,
              inactiveColor: Colors.black,
              activeColor: Colors.grey,
              value: isChecked,
              onToggle: (value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('data'),
              subtitle: Text('test data'),
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('This is your alarm'),
              trailing: Container(
                width: 35,
                child: FlutterSwitch(
                  width: 35,
                  height: 20,
                  activeToggleColor: Colors.red,
                  inactiveColor: Colors.black,
                  activeColor: Colors.grey,
                  value: isChecked,
                  onToggle: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    // controller: myController,
                    // validator: Validators.validatePassword(),
                    decoration: InputDecoration(
                      hint: Text('Please enter your name'),
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
                ),
                Expanded(child: Icon(Icons.abc, size: 50)),
              ],
            ),
            Gap(20),
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
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            // GestureDetector(
            //   onTap: () {
            //     print('The new container has been tapped');
            //   },
            //   onDoubleTap: () {
            //     SnackbarHandler.showSuccessSnackbar(
            //       context: context,
            //       message: 'first snackbar',
            //     );
            //   },
            //   child: Container(
            //     padding: EdgeInsets.all(16),
            //     child: Icon(Icons.close, size: 50),
            //   ),
            // ),
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
    );
  }
}
