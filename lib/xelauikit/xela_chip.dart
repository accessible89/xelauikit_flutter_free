import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'xela_color.dart';
import 'xela_text_style.dart';
import 'models/xela_chip_models.dart';

class XelaChip extends StatefulWidget {
  final String text;
  final XelaChipSize size;
  final Widget? leftIconActive;
  final Widget? leftIconInactive;
  final Widget? rightButtonActive;
  final Widget? rightButtonInactive;
  final bool disabled;
  bool selected;
  final double borderWidth;
  final Color defaultBorderColor;
  final Color selectedBorderColor;
  final Color defaultBackgroundColor;
  final Color selectedBackgroundColor;
  final Color defaultContentColor;
  final Color selectedContentColor;
  final Function(bool)? onChange;

  XelaChip({
    required this.text,
    this.size = XelaChipSize.LARGE,
    this.leftIconActive,
    this.leftIconInactive,
    this.rightButtonActive,
    this.rightButtonInactive,
    this.disabled = false,
    this.selected = false,
    this.borderWidth = 2,
    this.defaultBorderColor = XelaColor.Blue3,
    this.selectedBorderColor = XelaColor.Blue3,
    this.defaultBackgroundColor = Colors.white,
    this.selectedBackgroundColor = XelaColor.Blue3,
    this.defaultContentColor = XelaColor.Blue3,
    this.selectedContentColor = Colors.white,
    this.onChange
  });

  _XelaChipState createState() => _XelaChipState();
}

class _XelaChipState extends State<XelaChip> {
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
    return InkWell(
      borderRadius: BorderRadius.circular(99),
      onTap: (){
        if(!widget.disabled) {
          setState(() {
            widget.selected = !widget.selected;
          });
        }

    }, child: Opacity(opacity: widget.disabled ? 0.48 : 1,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(99),
            color: widget.selected ? widget.selectedBackgroundColor : widget.defaultBackgroundColor,
            border: Border.all(width: widget.borderWidth, color: widget.selected ? widget.selectedBorderColor : widget.defaultBorderColor)
        ),
        padding: EdgeInsets.only(
            top: widget.size == XelaChipSize.LARGE ? 12 : widget.size == XelaChipSize.MEDIUM ? 8 : 4,
            bottom: widget.size == XelaChipSize.LARGE ? 12 : widget.size == XelaChipSize.MEDIUM ? 8 : 4,
            left: widget.size == XelaChipSize.SMALL || (widget.size == XelaChipSize.MEDIUM && widget.leftIconInactive != null) ? 8 : 12,
            right: widget.rightButtonInactive != null && widget.size != XelaChipSize.LARGE ? widget.size == XelaChipSize.MEDIUM ? 8 : 4 : 12
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.leftIconInactive != null ? Container(
              padding: EdgeInsets.only(right: 10),
              width: 26,
              height: 16,
              child: FittedBox(
                child: widget.selected && widget.leftIconActive != null ? widget.leftIconActive : widget.leftIconInactive,
              ),
            ) : Container(),
            Text(widget.text, style: XelaTextStyle.XelaCaption.apply(color: widget.selected ? widget.selectedContentColor : widget.defaultContentColor),),
            widget.rightButtonInactive != null ? Container(
              padding: EdgeInsets.only(left: 10),
              width: 26,
              height: 16,
              child: FittedBox(
                child: widget.selected && widget.rightButtonActive != null ? widget.rightButtonActive : widget.rightButtonInactive,
              ),
            ) : Container()
          ],
        ),
      )
      ,),);
  }
}