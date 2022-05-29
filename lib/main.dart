import 'package:flutter/material.dart';
import 'package:flutter_refactor_case/widgets/dot.dart';

import 'Constant/Constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            image(context),
            productName(),
            productColors(),
            productDetail(),
            productPrice(),
            buttonBuyNow(context),
          ],
        ),
      ),
    ));
  }

  Padding buttonBuyNow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration:
              BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(10)),
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.06,
          child: const Center(
            child: Text(
              Constant.buttonDetail,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }

  Padding productPrice() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          Constant.price,
          style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }

  Padding productDetail() {
    return const Padding(
      padding: EdgeInsets.all(11.0),
      child: Center(
        child: Text(Constant.productDetail),
      ),
    );
  }

  Padding productColors() {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const DotContainer(color: Colors.blue),
          const SizedBox(width: 20),
          const DotContainer(color: Colors.red),
          const SizedBox(width: 20),
          const DotContainer(color: Colors.yellow),
          const SizedBox(width: 20),
          const DotContainer(color: Colors.black),
        ],
      ),
    );
  }

  Align productName() {
    return const Align(
      alignment: Alignment.center,
      child: Text(
        Constant.productName,
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 50),
      ),
    );
  }

  Container image(context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.45,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Constant.image('modelY.jpg')),
            fit: BoxFit.cover,
          ),
          color: Constant.imageBackgroundColor,
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: IconButton(onPressed: () {}, icon: const Icon(Constant.imageIcon)),
        ));
  }
}
