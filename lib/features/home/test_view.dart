import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ionicons/ionicons.dart';

@RoutePage()
class TestView extends HookWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = useState(0);
    void incrementCounter() => counter.value++;
    void toDetail () {
      incrementCounter();
      context.router.pushPath('/error');
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Home Screen'),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      // backgroundColor: Colors.white.withOpacity(0.9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text(
              '${counter.value}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: toDetail,
              child: Text('Go to error Screen'),
            ),
            TextButton.icon(
              onPressed: () async {
                const channel = MethodChannel('crashy-custom-channel');
                await channel.invokeMethod('blah');
              },
              icon: Icon(Ionicons.bug_outline),
              label: Text('Click me!'),
            )
          ],
        ),
      ),
    );
  }
}
