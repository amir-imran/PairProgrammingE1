import 'package:e1/screens/home/body.dart';
import 'package:e1/screens/home/container.dart';
import 'package:e1/screens/home/widgets/custom_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pair Programming',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'My Icon'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _red = 0.0;
  double _green = 0.0;
  double _blue = 0.0;
  var _size = 100.0;

  get red => _red;
  set red(value) => _red = value;

  get blue => _blue;
  set blue(value) => _blue = value;

  get green => _green;
  set green(value) => _green = value;

  get size => _size;
  set size(value) => _size = value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Icon'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            Contain(state: this),
          ],
        ),
        body: Body(
          size: size,
          red: red,
          blue: blue,
          green: green,
        ),
        bottomNavigationBar: CustomSlider(state: this),
      ),
    );
  }
}
