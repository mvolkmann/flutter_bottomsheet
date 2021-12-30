import 'package:flutter/material.dart';

void openBottomSheet({
  Color backgroundColor = Colors.blue,
  required BuildContext context,
  required Widget widget,
  bool modal = false,
  bool includeCloseButton = false,
}) {
  var fn = modal ? showModalBottomSheet : showBottomSheet;
  fn<void>(
    backgroundColor: backgroundColor,
    context: context,
    builder: (context) => SafeArea(
      child: SizedBox(
        child: Column(
          children: [
            widget,
            if (includeCloseButton)
              ElevatedButton(
                child: Text('Close'),
                onPressed: () => Navigator.pop(context),
              )
          ],
          mainAxisSize: MainAxisSize.min,
        ),
        width: double.infinity,
      ),
    ),
  );
}
