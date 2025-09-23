import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/authentication/views/signup/views/reason.dart';
import 'package:summer_flutter/core/my_button.dart';
import 'package:summer_flutter/lesson/provider/counter_provider.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, provider, _) {
        return Scaffold(
          appBar: AppBar(title: Text('Counter App')),
          body: Center(
            child: Column(
              children: [
                Text('Count'),
                Text(provider.count.toString()),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: MyButton(
                        title: 'Increment',
                        onPressed: () {
                          provider.increment();
                        },
                      ),
                    ),
                    Expanded(
                      child: MyButton(
                        title: 'Decrement',
                        onPressed: () {
                          provider.decrement();
                        },
                      ),
                    ),
                    Expanded(
                      child: MyButton(
                        title: 'Reset',
                        onPressed: () {
                          provider.reset();
                        },
                      ),
                    ),
                  ],
                ),
                MyButton(
                  title: 'NEXT',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const Reason(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
