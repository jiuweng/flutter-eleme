import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_eleme/common/iconfont.dart';
import 'package:flutter_eleme/views/login/index.dart';
import 'package:flutter_eleme/views/order/index.dart';
import 'package:flutter_eleme/views/supermarket/index.dart';
import 'package:flutter_eleme/views/user/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // 强制竖屏
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  // 任务栏透明
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(750, 1334),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: '仿饿了么',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const FlutterEleme(),
        );
      },
    );
  }
}

class FlutterEleme extends StatefulWidget {
  const FlutterEleme({Key? key}) : super(key: key);
  @override
  State<FlutterEleme> createState() => _FlutterElemeState();
}

class _FlutterElemeState extends State<FlutterEleme> {
  var allPages = [
    const LoginPage(),
    const SuperMarketPage(),
    const OrderPage(),
    const UserPage()
  ];
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allPages[currentIndex],
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
