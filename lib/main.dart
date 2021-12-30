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
      home: MyHomePage(title: 'BottomSheet Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final sheetWidget = Text(
    'I am in a BottomSheet.',
    style: TextStyle(color: Colors.white, fontSize: 24),
  );

  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        // Using Builder just to get a Context inside Scaffold
        // so the showBottomSheet function can find the Scaffold.
        child: Builder(
          builder: (context) {
            var nonModalButton = ElevatedButton(
              child: Text('Show Non-Modal BottomSheet'),
              onPressed: () => openBottomSheet(
                backgroundColor: Colors.green,
                context: context,
                includeCloseButton: true,
                modal: false,
                widget: sheetWidget,
              ),
            );

            var modalButton = ElevatedButton(
              child: Text('Show Modal BottomSheet'),
              onPressed: () => openBottomSheet(
                context: context,
                modal: true,
                widget: sheetWidget,
              ),
            );

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[nonModalButton, modalButton],
            );
          },
        ),
      ),
    );
  }
}
