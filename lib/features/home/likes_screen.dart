import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ionicons/ionicons.dart';
import 'package:untitled8/app_router.gr.dart';

@RoutePage()
class LikesScreen extends HookWidget {
  const LikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = useState(0);
    void incrementCounter() => counter.value++;
    void toDetail () {
      incrementCounter();
      context.router.push(DetailRoute(id: 1212));
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Likes Screen'),
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
            TextButton.icon(
              onPressed: toDetail,
              icon: Icon(Ionicons.home),
              label: Text('Go to Detail Screen'),
            )
          ],
        ),
      ),
    );
  }
}
