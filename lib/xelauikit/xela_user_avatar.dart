import 'package:flutter/material.dart';
import 'xela_color.dart';
import 'xela_text_style.dart';

import 'models/xela_user_avatar_models.dart';

class XelaUserAvatar extends StatefulWidget {
  final XelaUserAvatarSize size;
  final XelaUserAvatarStyle style;
  final String? initials;
  final Widget? icon;
  final Widget? image;
  int count;
  final XelaUserAvatarDecoration? decoration;
  final XelaUserAvatarDecorationPosition decorationPosition;
  final Color background;
  final Color foreground;
  final Widget? plusIcon;
  final Color decorationBorderColor;
  final Color decorationBackground;
  final Color decorationForeground;

  XelaUserAvatar({
    this.count = 0,
    this.style = XelaUserAvatarStyle.RECTANGLE,
    this.size = XelaUserAvatarSize.MEDIUM,
    this.initials,
    this.icon,
    this.image,
    this.decoration,
    this.decorationPosition = XelaUserAvatarDecorationPosition.BOTTOMRIGHT,
    this.background = XelaColor.Blue7,
    this.foreground = Colors.white,
    this.plusIcon,
    this.decorationBorderColor = Colors.white,
    this.decorationBackground = XelaColor.Red3,
    this.decorationForeground = Colors.white
  });
  @override
  _XelaUserAvatarState createState() => _XelaUserAvatarState();
}

class _XelaUserAvatarState extends State<XelaUserAvatar> {

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
    return Stack(
      alignment: widget.decorationPosition == XelaUserAvatarDecorationPosition.TOPRIGHT ? Alignment.topRight : Alignment.bottomRight,
      children: [
        Container(
          alignment: Alignment.center,
          width: widget.size == XelaUserAvatarSize.LARGE ? 64 : widget.size == XelaUserAvatarSize.MEDIUM ? 48 : 32,
          height: widget.size == XelaUserAvatarSize.LARGE ? 64 : widget.size == XelaUserAvatarSize.MEDIUM ? 48 : 32,
          decoration: BoxDecoration(
              shape: widget.style == XelaUserAvatarStyle.RECTANGLE ? BoxShape.rectangle : BoxShape.circle,
              borderRadius: widget.style == XelaUserAvatarStyle.RECTANGLE ? BorderRadius.circular(widget.size == XelaUserAvatarSize.LARGE ? 24 : widget.size == XelaUserAvatarSize.MEDIUM ? 18 : 12) : null,
              color: widget.background
          ),
          clipBehavior: Clip.hardEdge,
          child: (widget.image != null ?
          widget.image! : widget.icon != null ?
          SizedBox(
            width: widget.size == XelaUserAvatarSize.LARGE ? 32 : widget.size == XelaUserAvatarSize.MEDIUM ? 24 : 16,
            height: widget.size == XelaUserAvatarSize.LARGE ? 32 : widget.size == XelaUserAvatarSize.MEDIUM ? 24 : 16,
            child: FittedBox( child: widget.icon!,),
          ) : widget.initials != null ?
          Text(widget.initials!, style: (widget.size == XelaUserAvatarSize.LARGE ? XelaTextStyle.XelaHeadline : widget.size == XelaUserAvatarSize.MEDIUM ? XelaTextStyle.XelaSubheadline : XelaTextStyle.XelaButtonMedium).apply(color: widget.foreground),): null),
        ),
        widget.decoration != null ? Container(
          width: widget.decoration == XelaUserAvatarDecoration.INDICATOR ? widget.size == XelaUserAvatarSize.LARGE ? 12 : widget.size == XelaUserAvatarSize.MEDIUM ? 10 : 8 : widget.size == XelaUserAvatarSize.LARGE ? 18 : widget.size == XelaUserAvatarSize.MEDIUM ? 16 : 12,
          height: widget.decoration == XelaUserAvatarDecoration.INDICATOR ? widget.size == XelaUserAvatarSize.LARGE ? 12 : widget.size == XelaUserAvatarSize.MEDIUM ? 10 : 8 : widget.size == XelaUserAvatarSize.LARGE ? 18 : widget.size == XelaUserAvatarSize.MEDIUM ? 16 : 12,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.decorationBackground,
            border: widget.decoration == XelaUserAvatarDecoration.COUNTER ? null : Border.all(color: widget.decorationBorderColor, width: widget.size == XelaUserAvatarSize.LARGE ? 3 : widget.size == XelaUserAvatarSize.MEDIUM ? 2 : 1)
          ),
          clipBehavior: Clip.hardEdge,
          child: widget.decoration == XelaUserAvatarDecoration.PLUS ?
          SizedBox(width: 8, height: 8, child: FittedBox(child: widget.plusIcon,),) : widget.decoration == XelaUserAvatarDecoration.COUNTER ?
          FittedBox(child: Text(widget.count.toString(), style: TextStyle(fontSize: widget.size == XelaUserAvatarSize.LARGE ? 10 : 8, color: widget.decorationForeground), textAlign: TextAlign.center,),) : Container(),
        ): Container()
      ],
    );
  }
}