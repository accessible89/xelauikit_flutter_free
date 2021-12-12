import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'xela_color.dart';
import 'xela_text_style.dart';

class XelaAlert extends StatefulWidget {
  final String title;
  final String text;
  final Widget? leftIcon;
  final Widget? rightWidget;
  final Color primaryColor;
  final Color secondaryColor;
  final Color background;
  XelaAlert({
    required this.title,
    required this.text,
    this.leftIcon,
    this.rightWidget,
    this.primaryColor = XelaColor.Blue6,
    this.secondaryColor = XelaColor.Gray7,
    this.background = Colors.white
  });

  @override
  _XelaAlertState createState() => _XelaAlertState();
}

class _XelaAlertState extends State<XelaAlert> {
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
    return Container(
      decoration: BoxDecoration(
        color: widget.background,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            width: 4,
            decoration: BoxDecoration(
              color: widget.primaryColor,
              borderRadius: const BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16))
            ),
          ),
          widget.leftIcon != null ? Container(
            width: 32,
            height: 16,
            padding: const EdgeInsets.only(left: 16),
            child: FittedBox(
              fit: BoxFit.fill,
              child: widget.leftIcon,
            ),
          ) : Container(),
          Expanded(
              child:Container(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title, style: XelaTextStyle.XelaButtonMedium.apply(color: widget.primaryColor),),
                    Text(widget.text, style: XelaTextStyle.XelaCaption.apply(color: widget.secondaryColor))
                  ],
                ),
              )
          ),
          widget.rightWidget != null ? Container(
            width: 32,
            height: 16,
            padding: const EdgeInsets.only(right: 16),
            child: FittedBox(
              fit: BoxFit.fill,
              child: widget.rightWidget,
            ),
          ) : Container(),
        ],
      ),
    );
  }
}