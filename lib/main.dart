import 'package:flutter/material.dart';

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
            Builder(
              builder: (context) => ElevatedButton(
                child: Text('Show BottomSheet'),
                onPressed: () {
                  showBottomSheet<void>(
                    context: context,
                    builder: (context) => SafeArea(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          child: Column(children: [
                            Text(
                              'I am in a BottomSheet.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            ElevatedButton(
                                child: Text('Close'),
                                onPressed: () => Navigator.pop(context))
                          ]),
                          decoration: BoxDecoration(color: Colors.green),
                          height: 100,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
