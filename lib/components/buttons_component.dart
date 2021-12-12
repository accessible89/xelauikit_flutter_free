import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../xelauikit/models/xela_button_models.dart';
import '../xelauikit/models/xela_toggle_models.dart';
import '../xelauikit/xela_button.dart';
import '../xelauikit/xela_color.dart';
import '../xelauikit/xela_divider.dart';
import '../xelauikit/xela_text_style.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ButtonsComponent extends StatefulWidget {
  const ButtonsComponent({Key? key}) : super(key: key);

  @override
  _ButtonsComponentState createState() => _ButtonsComponentState();
}

class _ButtonsComponentState extends State<ButtonsComponent> {

  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _isDark ? XelaColor.Gray1 : Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: kIsWeb ? 0 : 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      RawMaterialButton(
                        elevation: 0,
                        focusElevation: 2,
                        highlightElevation: 0,
                        fillColor: Colors.transparent,
                        hoverElevation: 0,
                        onPressed: () {  Navigator.pop(context); },
                        constraints: const BoxConstraints(),
                        child:
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Icon(Icons.arrow_back, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),
                        ),
                      ),
                      Expanded(
                          child: Text("Buttons", style: XelaTextStyle.XelaSubheadline.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)
                      ),
                    ],
                  )
              ),
              Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Usage Example", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.bookmark, size: 20, color: Colors.white),
                                text: "Bookmark",
                                size: XelaButtonSize.MEDIUM,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_4x4, size: 20, color: Colors.white),
                                text: "Grid",
                                size: XelaButtonSize.MEDIUM,
                                background: _isDark ? XelaColor.Pink5 : XelaColor.Pink3,
                                foregroundColor: Colors.white,
                              ),
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.format_list_bulleted, size: 20, color: Colors.white),
                                size: XelaButtonSize.MEDIUM,
                                background: XelaColor.Gray3,
                                foregroundColor: Colors.white,
                              )
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.delete, size: 20, color: Colors.white),
                                text: "Delete item",
                                size: XelaButtonSize.MEDIUM,
                                background: _isDark ? XelaColor.Red6 : XelaColor.Red3,
                                foregroundColor: Colors.white,
                              ),
                              XelaButton(
                                onPressed: (){},
                                rightIcon: Icon(Icons.download, size: 20, color: _isDark ? Colors.black : Colors.white),
                                text: "Download file",
                                size: XelaButtonSize.MEDIUM,
                                background: XelaColor.Green2,
                                foregroundColor: _isDark ? Colors.black : Colors.white,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                rightIcon: Icon(Icons.arrow_forward, size: 20, color: XelaColor.Purple3),
                                text: "Next",
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.MEDIUM,
                                background: Colors.transparent,
                                foregroundColor: XelaColor.Purple3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                              XelaButton(
                                onPressed: (){},
                                rightIcon: Icon(Icons.more_horiz, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                text: "More",
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.MEDIUM,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Type: Primary Size: Large", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                text: "Button",
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.LARGE,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                rightIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                text: "Button",
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.LARGE,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                text: "Button",
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.LARGE,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                              XelaButton(
                                onPressed: (){},
                                rightIcon: Icon(Icons.grid_view, size:20, color: Colors.white),
                                text: "Button",
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.LARGE,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size:20, color: Colors.white),
                                rightIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.LARGE,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.LARGE,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: XelaButton(
                          onPressed: (){},
                          leftIcon: Icon(Icons.grid_view, size:20, color: Colors.white),
                          rightIcon: Icon(Icons.grid_view, size:20, color: Colors.white),
                          text: "Autoresize Off",
                          type: XelaButtonType.PRIMARY,
                          size: XelaButtonSize.LARGE,
                          background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                          foregroundColor: Colors.white,
                          autoResize: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Type: Secondary Size: Large", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                text: "Button",
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.LARGE,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                rightIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                text: "Button",
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.LARGE,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                text: "Button",
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.LARGE,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                              XelaButton(
                                onPressed: (){},
                                rightIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                text: "Button",
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.LARGE,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                rightIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.LARGE,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.LARGE,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: XelaButton(
                          onPressed: (){},
                          leftIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                          rightIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                          text: "Autoresize Off",
                          type: XelaButtonType.SECONDARY,
                          size: XelaButtonSize.LARGE,
                          background: Colors.transparent,
                          foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                          defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                          autoResize: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Type: Primary Size: Medium", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                text: "Button",
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.MEDIUM,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                rightIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                text: "Button",
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.MEDIUM,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                text: "Button",
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.MEDIUM,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                              XelaButton(
                                onPressed: (){},
                                rightIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                text: "Button",
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.MEDIUM,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                rightIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.MEDIUM,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.MEDIUM,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: XelaButton(
                          onPressed: (){},
                          leftIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                          rightIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                          text: "Autoresize Off",
                          type: XelaButtonType.PRIMARY,
                          size: XelaButtonSize.MEDIUM,
                          background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                          foregroundColor: Colors.white,
                          autoResize: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Type: Secondary Size: Medium", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                text: "Button",
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.MEDIUM,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                rightIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                text: "Button",
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.MEDIUM,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                text: "Button",
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.MEDIUM,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                              XelaButton(
                                onPressed: (){},
                                rightIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                text: "Button",
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.MEDIUM,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                rightIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.MEDIUM,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.MEDIUM,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: XelaButton(
                          onPressed: (){},
                          leftIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                          rightIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                          text: "Autoresize Off",
                          type: XelaButtonType.SECONDARY,
                          size: XelaButtonSize.MEDIUM,
                          background: Colors.transparent,
                          foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                          defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                          autoResize: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Type: Primary Size: Small", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                text: "Button",
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.SMALL,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                rightIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                text: "Button",
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.SMALL,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                text: "Button",
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.SMALL,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                              XelaButton(
                                onPressed: (){},
                                rightIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                text: "Button",
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.SMALL,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                rightIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.SMALL,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                                type: XelaButtonType.PRIMARY,
                                size: XelaButtonSize.SMALL,
                                background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                foregroundColor: Colors.white,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: XelaButton(
                          onPressed: (){},
                          leftIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                          rightIcon: Icon(Icons.grid_view, size: 20, color: Colors.white),
                          text: "Autoresize Off",
                          type: XelaButtonType.PRIMARY,
                          size: XelaButtonSize.SMALL,
                          background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                          foregroundColor: Colors.white,
                          autoResize: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Type: Secondary Size: Small", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                text: "Button",
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.SMALL,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                rightIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                text: "Button",
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.SMALL,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                text: "Button",
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.SMALL,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                              XelaButton(
                                onPressed: (){},
                                rightIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                text: "Button",
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.SMALL,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                rightIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.SMALL,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                              XelaButton(
                                onPressed: (){},
                                leftIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                type: XelaButtonType.SECONDARY,
                                size: XelaButtonSize.SMALL,
                                background: Colors.transparent,
                                foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: XelaButton(
                          onPressed: (){},
                          leftIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                          rightIcon: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                          text: "Autoresize Off",
                          type: XelaButtonType.SECONDARY,
                          size: XelaButtonSize.SMALL,
                          background: Colors.transparent,
                          foregroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                          defaultBorderColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                          autoResize: false,
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),
        )
    );
  }
}