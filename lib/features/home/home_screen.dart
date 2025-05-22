import 'package:asuka/asuka.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ionicons/ionicons.dart';
import 'package:untitled8/app_router.gr.dart';

@RoutePage()
class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

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
            ElevatedButton(onPressed: (){
              // Asuka.showSnackBar(SnackBar(
              //   content: Text("Hello World"),
              // ));
              Asuka.showCupertinoDialog(builder:(context) {
                return SizedBox(
                  height: 200,
                  child: Center(
                    child: Text("Hello World"),
                  ),
                );
              });
              AsukaMaterialBanner.alert('Hello World').show();

              // AsukaSnackbar.success("success").show();
            }, child: Text('show snackbar')),
            TextButton.icon(
              onPressed: toDetail,
              icon: Icon(Ionicons.home),
              label: Text('Go to Detail Screen'),
              clipBehavior: Clip.antiAlias,
            )
          ],
        ),
      ),
    );
  }
}
