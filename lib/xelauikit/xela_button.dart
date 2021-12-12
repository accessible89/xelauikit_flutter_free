import 'package:flutter/material.dart';
import 'xela_color.dart';
import 'xela_text_style.dart';
import 'models/xela_button_models.dart';

class XelaButton extends StatelessWidget {
  XelaButton({
    this.text,
    required this.onPressed,
    this.leftIcon,
    this.rightIcon,
    this.size = XelaButtonSize.MEDIUM,
    this.state = XelaButtonState.DEFAULT,
    this.type = XelaButtonType.PRIMARY,
    this.background = XelaColor.Blue,
    this.foregroundColor = Colors.white,
    this.defaultBorderColor = XelaColor.Gray11,
    this.autoResize = true,
    this.borderLineWidth = 1,
    this.removePaddings = false,
    this.horizontalAlignment = MainAxisAlignment.center,
  });

  final String? text;
  final GestureTapCallback onPressed;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final XelaButtonSize size;
  final XelaButtonState state;
  final XelaButtonType type;
  final Color background;
  final Color foregroundColor;
  final Color defaultBorderColor;
  final bool autoResize;
  final double borderLineWidth;
  final bool removePaddings;
  final MainAxisAlignment horizontalAlignment;


  @override
  Widget build(BuildContext context) {

    var children = <Widget>[];

    if (leftIcon != null) {
      children.add(
        Padding(
          padding: EdgeInsets.only(right: removePaddings ? 0 : text != null ? (size == XelaButtonSize.LARGE ? 18 : size == XelaButtonSize.MEDIUM ? 14 : 9) : rightIcon != null ? (size == XelaButtonSize.SMALL ? 5 : 10) : 0,),
          child: leftIcon!,
        )
      );
    }

    if (text != null) {
      children.add(
          Text(
            text!,
            style: (size == XelaButtonSize.SMALL ? XelaTextStyle.XelaButtonMedium : size == XelaButtonSize.SMALL ? XelaTextStyle.XelaButtonSmall : XelaTextStyle.XelaButtonLarge).apply(color: foregroundColor),
          )
      );
    }

    if (rightIcon != null) {
      children.add(
          Padding(
            padding: EdgeInsets.only(left: removePaddings ? 0 : text != null ? (size == XelaButtonSize.LARGE ? 18 : size == XelaButtonSize.MEDIUM ? 14 : 9) : leftIcon != null ? (size == XelaButtonSize.SMALL ? 5 : 10) : 0,),
            child: rightIcon!,
          )

      );
    }



    return RawMaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      elevation: 0,
      focusElevation: 2,
      highlightElevation: 0,
      hoverElevation: 0,
      fillColor: background,
      constraints: const BoxConstraints(),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            removePaddings ? 0 : (leftIcon != null ? (size == XelaButtonSize.LARGE ? 24 : size == XelaButtonSize.MEDIUM ? 16 : 8) : (size == XelaButtonSize.LARGE ? 24 : (size == XelaButtonSize.SMALL && text == null ? 8 : 16))),
            removePaddings ? 0 : (size == XelaButtonSize.SMALL ? 8 : 16),
            removePaddings ? 0 : (rightIcon != null ? (size == XelaButtonSize.LARGE ? 24 : size == XelaButtonSize.MEDIUM ? 16 : 8) : (size == XelaButtonSize.LARGE ? 24 : (size == XelaButtonSize.SMALL && text == null ? 8 : 16))),
            removePaddings ? 0 : (size == XelaButtonSize.SMALL ? 8 : 16)
        ),
        child: Row(
          mainAxisSize: autoResize ? MainAxisSize.min : MainAxisSize.max,
          mainAxisAlignment: horizontalAlignment,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ),
      ),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
          side: type == XelaButtonType.PRIMARY ? BorderSide.none : BorderSide(
            color: defaultBorderColor,
            width: borderLineWidth
          ),
          borderRadius: BorderRadius.all(Radius.circular(size == XelaButtonSize.SMALL ? 12 : 16))
      ),
    );
  }
}