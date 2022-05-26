import 'package:flutter/material.dart';
import 'features/home_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
            button: TextStyle(color: Colors.white),
            headline5: TextStyle(
              color: Colors.amber,
            )),
        primarySwatch: Colors.amber,
      ),
      home: SafeArea(child: HomeView()),
    );
  }
}
