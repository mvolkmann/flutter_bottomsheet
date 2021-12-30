import 'package:flutter/material.dart';

void openBottomSheet({
  required BuildContext context,
  required Widget widget,
  bool modal = false,
}) {
  var fn = modal ? showModalBottomSheet : showBottomSheet;
  fn<void>(
    backgroundColor: Colors.green,
    context: context,
    builder: (context) => SafeArea(
      child: SizedBox(
        child: Column(
          children: [
            widget,
            ElevatedButton(
                child: Text('Close'), onPressed: () => Navigator.pop(context))
          ],
          mainAxisSize: MainAxisSize.min,
        ),
        width: double.infinity,
      ),
    ),
  );
}
