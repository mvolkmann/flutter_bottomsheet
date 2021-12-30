import 'package:flutter/material.dart';

void openBottomSheet({
  required BuildContext context,
  required Widget widget,
}) {
  showBottomSheet<void>(
    context: context,
    builder: (context) => SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          child: Column(children: [
            widget,
            ElevatedButton(
                child: Text('Close'), onPressed: () => Navigator.pop(context))
          ]),
          decoration: BoxDecoration(color: Colors.green),
          height: 100,
          width: double.infinity,
        ),
      ),
    ),
  );
}
