import 'package:flutter/material.dart';
import 'bottom_sheet.dart';

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
        // Using Builder just to get a Context inside Scaffold
        // so the showBottomSheet function can find the Scaffold.
        child: Builder(
          builder: (context) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text('Show Non-Modal BottomSheet'),
                // openBottomSheet is defined in bottom_sheet_button.dart.
                onPressed: () => openBottomSheet(
                  backgroundColor: Colors.green,
                  context: context,
                  includeCloseButton: true,
                  modal: false,
                  widget: sheetWidget,
                ),
              ),
              ElevatedButton(
                child: Text('Show Modal BottomSheet'),
                onPressed: () => openBottomSheet(
                  context: context,
                  modal: true,
                  widget: sheetWidget,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
