import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';


@RoutePage()
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Screen')),
      body: Center(
        child: Text('Detail Screen for $id'),
      ),
    );
  }
}
