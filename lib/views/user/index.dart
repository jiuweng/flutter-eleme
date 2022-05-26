import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 200,
      height: 200,
      color: Colors.green,
      child: const Text('我是用户页'),
    ));
  }
}
