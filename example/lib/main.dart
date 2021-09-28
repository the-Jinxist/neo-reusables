import 'package:flutter/material.dart';
import 'package:neo_reusables/neo_reusables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neo Reusables Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(builder: (context) {
        ///SizeConfig should be initialized in a builder like such
        ///The is so you can get the context on first app run and also the screen width/size
        ///It is also popular to use the screen sizes created by the your designer in Figma, XD etc
        final Size size = MediaQuery.of(context).size;
        SizeConfig.init(context,
            width: size.width, height: size.height, allowFontScaling: true);

        return const MyHomePage(title: 'Neo Reusables Home Page');
      }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //NeoText wrapper
            NeoText(
              text: "Your counter: $_counter",
            ),
            //Vertical Margin
            const YMargin(height: 10),
            Row(
              children: [
                //Horizontal Margin
                const XMargin(width: 20),
                //Button Wrapper
                NeoButton(
                  onClick: () {
                    _incrementCounter();
                  },
                  text: 'Tap',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
