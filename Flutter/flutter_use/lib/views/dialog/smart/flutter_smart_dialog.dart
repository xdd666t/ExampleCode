import 'dart:async';

import 'package:flutter/material.dart';

import 'smart_dialog.dart';

class FlutterSmartDialog extends StatefulWidget {
  const FlutterSmartDialog({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<FlutterSmartDialog> createState() => _FlutterSmartDialogState();
}

class _FlutterSmartDialogState extends State<FlutterSmartDialog> {
  @override
  void dispose() {
    SmartDialog.instance.overlayEntry = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Overlay(
        initialEntries: [
          //主体布局
          OverlayEntry(builder: (BuildContext context) => widget.child),

          //添加的控件,覆盖在主体布局上面
          SmartDialog.instance.overlayEntry!,
        ],
      ),
    );
  }
}
