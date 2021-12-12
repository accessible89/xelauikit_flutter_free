import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../xelauikit/models/xela_divider_models.dart';
import '../xelauikit/models/xela_toggle_models.dart';
import '../xelauikit/xela_badge.dart';
import '../xelauikit/xela_color.dart';
import '../xelauikit/xela_divider.dart';
import '../xelauikit/xela_text_style.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class BadgeComponent extends StatefulWidget {
  const BadgeComponent({Key? key}) : super(key: key);

  @override
  _BadgeComponentState createState() => _BadgeComponentState();
}

class _BadgeComponentState extends State<BadgeComponent> {

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
                        hoverElevation: 0,
                        fillColor: Colors.transparent,
                        onPressed: () {  Navigator.pop(context); },
                        constraints: const BoxConstraints(),
                        child:
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Icon(Icons.arrow_back, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),
                        ),
                      ),
                      Expanded(
                          child: Text("Badge", style: XelaTextStyle.XelaSubheadline.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)
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
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: Container(
                          padding: EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: _isDark ? XelaColor.Gray2 : XelaColor.Gray12
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Additional information", style: XelaTextStyle.XelaHeadline.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 24),
                                child: XelaDivider(style: XelaDividerStyle.DOTTED, color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(child: Text("Device Fingerprint", style: XelaTextStyle.XelaButtonMedium.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)),
                                    XelaBadge(text: "79", background: _isDark ? XelaColor.Blue8 : XelaColor.Blue11, textColor: _isDark ? XelaColor.Blue1 : XelaColor.Blue3,)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(child: Text("User Agent", style: XelaTextStyle.XelaButtonMedium.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)),
                                    XelaBadge(text: "49", background: _isDark ? XelaColor.Red7 : XelaColor.Red11, textColor: _isDark ? XelaColor.Red1 : XelaColor.Red3)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(child: Text("IP", style: XelaTextStyle.XelaButtonMedium.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)),
                                    XelaBadge(text: "22", background: _isDark ? XelaColor.Orange8 : XelaColor.Orange11, textColor: _isDark ? XelaColor.Orange1 : XelaColor.Orange3)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(child: Text("Attempts", style: XelaTextStyle.XelaButtonMedium.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)),
                                    XelaBadge(text: "6", background: _isDark ? XelaColor.Green8 : XelaColor.Green11, textColor: _isDark ? XelaColor.Green1 : XelaColor.Green2)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Variants", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            XelaBadge(
                              text: "Label text",
                              background: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              textColor: Colors.white,
                            ),
                            XelaBadge(
                              text: "Label text",
                              background: _isDark ? XelaColor.Pink5 : XelaColor.Pink3,
                              textColor: Colors.white,
                            ),
                            XelaBadge(
                              text: "Label text",
                              background: _isDark ? XelaColor.Green2 : XelaColor.Green2,
                              textColor: Colors.white,
                            ),
                          ],
                        )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              XelaBadge(
                                text: "Label text",
                                background: _isDark ? XelaColor.Yellow3 : XelaColor.Yellow3,
                                textColor: _isDark ? Colors.white : XelaColor.Gray2,
                              ),
                              XelaBadge(
                                text: "Label text",
                                background: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                                textColor: Colors.white,
                              ),
                              XelaBadge(
                                text: "Label text",
                                background: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                                textColor: Colors.white,
                              ),
                            ],
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              XelaBadge(
                                text: "Label text",
                                background: _isDark ? XelaColor.Purple3 : XelaColor.Purple5,
                                textColor: _isDark ? Colors.white : XelaColor.Gray2,
                              ),
                              XelaBadge(
                                text: "Label text",
                                background: _isDark ? XelaColor.Gray3 : XelaColor.Gray3,
                                textColor: Colors.white,
                              ),
                              XelaBadge(
                                text: "Label text",
                                background: _isDark ? XelaColor.Blue8 : XelaColor.Blue11,
                                textColor: Colors.white,
                              ),
                            ],
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              XelaBadge(
                                text: "Label text",
                                background: _isDark ? XelaColor.Pink8 : XelaColor.Pink11,
                                textColor: _isDark ? XelaColor.Pink1 : XelaColor.Pink3,
                              ),
                              XelaBadge(
                                text: "Label text",
                                background: _isDark ? XelaColor.Green8 : XelaColor.Green11,
                                textColor: _isDark ? XelaColor.Green1 : XelaColor.Green1,
                              ),
                              XelaBadge(
                                text: "Label text",
                                background: _isDark ? XelaColor.Yellow8 : XelaColor.Yellow11,
                                textColor: _isDark ? XelaColor.Yellow1 : XelaColor.Yellow1,
                              ),
                            ],
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              XelaBadge(
                                text: "Label text",
                                background: _isDark ? XelaColor.Orange8 : XelaColor.Orange11,
                                textColor: _isDark ? XelaColor.Orange1 : XelaColor.Orange3,
                              ),
                              XelaBadge(
                                text: "Label text",
                                background: _isDark ? XelaColor.Red8 : XelaColor.Red11,
                                textColor: _isDark ? XelaColor.Red1 : XelaColor.Red3,
                              ),
                              XelaBadge(
                                text: "Label text",
                                background: _isDark ? XelaColor.Purple8 : XelaColor.Purple11,
                                textColor: _isDark ? XelaColor.Purple1 : XelaColor.Purple3,
                              ),
                            ],
                          )
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