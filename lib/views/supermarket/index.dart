import 'package:flutter/material.dart';

class SuperMarketPage extends StatefulWidget {
  const SuperMarketPage({Key? key}) : super(key: key);

  @override
  State<SuperMarketPage> createState() => _SuperMarketPageState();
}

class _SuperMarketPageState extends State<SuperMarketPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.pink,
      child: const Text('我是超市页'),
    );
  }
}
