import 'package:flutter/material.dart';
import 'package:study_integration/widgets/buttons/regular_buttons.dart';

import 'my_home_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = MyHomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${controller.counter}',
              // Provide a Key to this specific Text widget. This allows
              // identifying the widget from inside the test suite,
              // and reading the text.
              key: const Key('counter'),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RegularButtons(
              key: const Key('Reduce'),
              onTap: () => setState(() {
                controller.reduceCounter();
              }),
              icon: Icons.remove,
            ),
            const SizedBox(width: 40),
            RegularButtons(
              // Provide a Key to this button. This allows finding this
              // specific button inside the test suite, and tapping it.
              key: const Key('Increment'),
              onTap: () => setState(() {
                controller.incrementCounter();
              }),
              icon: Icons.add,
            )
          ],
        ),
      ),
    );
  }
}
