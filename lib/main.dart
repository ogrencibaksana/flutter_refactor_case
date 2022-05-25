import 'package:flutter/material.dart';
import 'package:flutter_refactor_case/home/home_view.dart';
import 'package:flutter_refactor_case/home/home_view_model.dart';
import 'package:flutter_refactor_case/model/car_model.dart';
import 'package:flutter_refactor_case/model/image_palette.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  var carModel2 = CarModel([
    ImagePalette(
      Colors.blue,
      "assets/images/modelY.jpg",
    ),
    ImagePalette(
      Colors.red,
      "assets/images/red.jpeg",
    ),
    ImagePalette(
      Colors.yellow,
      "assets/images/yellow.jpeg",
    ),
    ImagePalette(
      Colors.black,
      "assets/images/black.jpg",
    ),
  ],
      "Tesla Model Y",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non mi lacus. Curabitur lobortis consequat accumsan. Nam varius congue vehicula. Aenean finibus orci elit, fermentum feugiat justo tincidunt id. Sed tempor nisi non nulla commodo feugiat. Pellentesque elementum vestibulum nunc, non bibendum mi. Nunc finibus est odio, ac feugiat nibh finibus vitae. Donec arcu eros, sodales eget",
      39000);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return ChangeNotifierProvider(
          create: (BuildContext context) {
            return HomeViewModel(
              carModel: carModel2,
            );
          },
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: HomeView(),
          ));
    });
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Stack(children: [
      SafeArea(
        child: Column(
          children: [
            Container(
                width: 500,
                height: 325,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/modelY.jpg")),
                  color: Colors.grey,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.chevron_left)),
                )),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Tesla Model Y",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.red),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.yellow),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(11.0),
              child: Center(
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non mi lacus. Curabitur lobortis consequat accumsan. Nam varius congue vehicula. Aenean finibus orci elit, fermentum feugiat justo tincidunt id. Sed tempor nisi non nulla commodo feugiat. Pellentesque elementum vestibulum nunc, non bibendum mi. Nunc finibus est odio, ac feugiat nibh finibus vitae. Donec arcu eros, sodales eget"),
              ),
            ),
            Spacer(),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "39.000 \$",
                  style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10)),
                  width: 180,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Satın Al",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ]));
  }
}
