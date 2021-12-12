import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'xela_color.dart';
import 'xela_text_style.dart';

class XelaBadge extends StatefulWidget {
  final String text;
  final Color background;
  final Color textColor;
  XelaBadge({required this.text, this.background = XelaColor.Blue3, this.textColor = Colors.white});

  @override
  _XelaBadgeState createState() => _XelaBadgeState();
}

class _XelaBadgeState extends State<XelaBadge> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {

    // Clean up the focus nodes
    // when the form is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.background
        ),
        child: Text(widget.text, style: XelaTextStyle.XelaCaption.apply(color: widget.textColor),),
      )
    ],);
  }
}