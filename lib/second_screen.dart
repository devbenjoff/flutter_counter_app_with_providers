import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:providers/counter.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            'Counter from previous screen ${context.watch<Counter>().count}'),
      ),
      body: Container(
        constraints: const BoxConstraints(minWidth: double.infinity),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Colors screen'),
            TextButton(
                onPressed: () => context.read<Counter>().increment(),
                child: const Text('Increment counter'))
          ],
        ),
      ),
    );
  }
}
