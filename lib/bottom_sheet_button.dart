import 'package:flutter/material.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
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
    );
  }
}
