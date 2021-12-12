import 'dart:ui';
import 'package:flutter/material.dart';
import 'models/xela_divider_models.dart';
import 'xela_color.dart';

class XelaDivider extends StatefulWidget {

  final XelaDividerStyle style;
  final XelaDividerOrientation orientation;
  final Color color;

  XelaDivider({
    Key? key, this.style = XelaDividerStyle.SOLID, this.orientation = XelaDividerOrientation.HORIZONTAL, this.color = XelaColor.Gray11,
  }) : super(key: key);

  @override
  _XelaDividerState createState() => _XelaDividerState();
}

class _XelaDividerState extends State<XelaDivider> {
  _XelaDividerState();

  @override
  Widget build(BuildContext context) {

    if(widget.style == XelaDividerStyle.SOLID) {
      if (widget.orientation == XelaDividerOrientation.HORIZONTAL) {
        return Divider(
          height: 1,
          thickness: 1,
          color: widget.color,
        );
      }
      else {
        return VerticalDivider(
          width: 1,
          thickness: 1,
          color: widget.color,
        );
      }
    }

    if (widget.orientation == XelaDividerOrientation.HORIZONTAL) {
      return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final boxWidth = constraints.constrainWidth();
          final dashWidth = (widget.style == XelaDividerStyle.DASHED ? 8 : 2).floorToDouble();
          final dashCount = (boxWidth / ((widget.style == XelaDividerStyle.DASHED ? 1.5 : 3) * dashWidth)).floor();
          return Flex(
            children: List.generate(dashCount, (_) {
              return SizedBox(
                width: dashWidth,
                height: widget.style == XelaDividerStyle.DOTTED ? 2 : 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: widget.color),
                ),
              );
            }),
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
          );
        },
      );
    }
    else {
      return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          var boxHeight = constraints.constrainHeight();
          if (boxHeight == double.infinity) {
            boxHeight = 0;
          }
          final dashHeight = (widget.style == XelaDividerStyle.DASHED ? 8 : 2).floorToDouble();
          final dashCount = (boxHeight / ((widget.style == XelaDividerStyle.DASHED ? 1.5 : 3) * dashHeight)).floor();
          return Flex(
            children: List.generate(dashCount, (_) {
              return SizedBox(
                width: widget.style == XelaDividerStyle.DOTTED ? 2 : 1,
                height: dashHeight,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: widget.color),
                ),
              );
            }),
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.vertical,
          );
        },
      );
    }

  }
}
