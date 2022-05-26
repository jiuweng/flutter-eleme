import 'package:flutter/material.dart';
import 'package:flutter_eleme/common/iconfont.dart';
import 'package:flutter_eleme/views/home/index.dart';
import 'package:flutter_eleme/views/order/index.dart';
import 'package:flutter_eleme/views/supermarket/index.dart';
import 'package:flutter_eleme/views/user/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '仿饿了么',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var allPages = [
    const HomePage(),
    const SuperMarketPage(),
    const OrderPage(),
    const UserPage()
  ];
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: allPages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF6c6c6c),
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(MyCustomIcons.home),
            label: "首页",
          ),
          BottomNavigationBarItem(
            icon: Icon(MyCustomIcons.superMarket),
            label: "超市",
          ),
          BottomNavigationBarItem(
            icon: Icon(MyCustomIcons.order),
            label: "订单",
          ),
          BottomNavigationBarItem(
            icon: Icon(MyCustomIcons.user),
            label: "我的",
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
