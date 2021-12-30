import 'package:flutter/material.dart';
import 'bottom_sheet_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BottomSheet Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter BottomSheet Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var sheetWidget = Text(
    'I am in a BottomSheet.',
    style: TextStyle(color: Colors.white, fontSize: 24),
  );

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
            // Using Builder just to get a Context inside Scaffold
            // so the showBottomSheet function can find the Scaffold.
            Builder(
              builder: (context) => ElevatedButton(
                child: Text('Show BottomSheet'),
                // openBottomSheet is defined in bottom_sheet_button.dart.
                onPressed: () => openBottomSheet(
                    context: context, widget: sheetWidget, modal: false),
              ),
            )
          ],
        ),
      ),
    );
  }
}
