import 'package:flutter/material.dart';
import 'utils/xela_expanded_section.dart';
import 'xela_color.dart';
import 'xela_text_style.dart';

import 'models/xela_accordion_models.dart';

class XelaAccordion extends StatefulWidget {
  final String title;
  bool isOpen;
  final Widget? openIcon;
  final Widget? closeIcon;
  final XelaAccordionIconPosition iconPosition;
  final Color openBackground;
  final Color closeBackground;
  final Color openTitleColor;
  final Color closeTitleColor;
  final Widget content;
  XelaAccordion({
    required this.title,
    this.isOpen = false,
    this.openIcon,
    this.closeIcon,
    this.iconPosition = XelaAccordionIconPosition.RIGHT,
    this.openBackground = XelaColor.Gray12,
    this.closeBackground = XelaColor.Gray12,
    this.openTitleColor = XelaColor.Gray2,
    this.closeTitleColor = XelaColor.Gray2,
    required this.content
  });

  @override
  _XelaAccordionState createState() => _XelaAccordionState();
}

class _XelaAccordionState extends State<XelaAccordion> {
  _XelaAccordionState();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.isOpen ? widget.openBackground : widget.closeBackground,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: (){
              setState(() {
                widget.isOpen = !widget.isOpen;
              });
            },
            child:  Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  widget.iconPosition == XelaAccordionIconPosition.LEFT && widget.openIcon != null && widget.closeIcon != null ?
                  widget.isOpen ? widget.openIcon! : widget.closeIcon!
                      : Container(),
                  widget.iconPosition == XelaAccordionIconPosition.LEFT && widget.openIcon != null && widget.closeIcon != null ? const SizedBox(width: 16) : Container(),
                  Text(widget.title, style: XelaTextStyle.XelaBodyBold.apply(color: widget.isOpen ? widget.openTitleColor : widget.closeTitleColor),),
                  const Spacer(),
                  widget.iconPosition == XelaAccordionIconPosition.RIGHT && widget.openIcon != null && widget.closeIcon != null ?
                  widget.isOpen ? widget.openIcon! : widget.closeIcon!
                      : Container(),
                ],
              ),
            ),
          ),
          XelaExpandedSection(
            expand: widget.isOpen,
            child: Padding(padding: const EdgeInsets.only(top: 0, bottom: 16, left: 16, right: 16), child: widget.content,)
          )
        ],
      ),
    );
  }
}