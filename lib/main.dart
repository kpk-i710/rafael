import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rafael_project/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      appBar: AppBar(
        backgroundColor: MyColors.appBar,
        title: Text(
          "Портфолио Rafael",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        // physics: FixedExtentScrollPhysics(),
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                'assets/back.svg',
                width: MediaQuery.sizeOf(context).width,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Rafael',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                      ),
                    ),
                    Text(
                      'Flutter разработчик',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Max.kg.",
                  style: TextStyle(
                      fontSize: 24,
                      color: MyColors.red,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Маркетплейс.',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: MyColors.text, fontSize: 24),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Приложение для ios и android полностью с 0 писал сам. Покупки через Paybox',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: MyColors.text, fontSize: 24),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)),
                    child: Image.asset('assets/max.png')),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: buttonAppStore(
                            title: "App Store", onPressed: () {})),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: buttonAppStore(
                            title: "Google Play", onPressed: () {})),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

Widget buttonAppStore({required String title, required Function() onPressed}) {
  return CupertinoButton(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      color: MyColors.appBar,
      child: Text(
        '${title}',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: onPressed);
}
