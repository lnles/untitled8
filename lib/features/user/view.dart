import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => UserProvider(),
      builder: (context, child) => _buildScreen(context),
    );
  }

  Widget _buildScreen(BuildContext context) {
    // final provider = context.read<UserProvider>();
    // final state = provider.state;

    return Container();
  }
}