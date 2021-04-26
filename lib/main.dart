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

  bool _allowResize = true;
  bool _changeprimer = true;

  get red => _red;
  set red(value) => setState(() => _red = value);

  get blue => _blue;
  set blue(value) => setState(() => _blue = value);

  get green => _green;
  set green(value) => setState(() => _green = value);

  get size => _size;
  set size(value) => setState(() => _size = value);

  get changeprimer => _changeprimer;

  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        key: _drawerKey,
        appBar: AppBar(
          title: Text('My Icon'),
          actions: [
            _allowResize ? Contain(state: this) : SizedBox(),
          ],
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => _drawerKey.currentState.openDrawer(),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              CheckboxListTile(
                value: _allowResize,
                onChanged: (bool value) {
                  setState(() => _allowResize = value);
                },
                title: Text('Allow Resize?'),
              ),
              CheckboxListTile(
                value: _changeprimer,
                onChanged: (bool value) {
                  setState(() => _changeprimer = value);
                },
                title: Text('Allow change Primer Color?'),
              )
            ],
          ),
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
