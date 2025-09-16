import 'package:flutter/material.dart';

class Lifecycle extends StatefulWidget {
  const Lifecycle({super.key});

  @override
  State<Lifecycle> createState() =>
      _LifecycleState();
}

class _LifecycleState extends State<Lifecycle> {
  @override
  void initState() {
    super.initState();
    debugPrint('Init state started');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint(
      'did change dependency initialized',
    );
  }

  @override
  void didUpdateWidget(
    covariant Lifecycle oldWidget,
  ) {
    super.didUpdateWidget(oldWidget);
    debugPrint('did update widget called');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('On dispose called');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Learning lifecycle'),
      ),
    );
  }
}
