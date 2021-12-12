import 'package:flutter/material.dart';

import '../xelauikit/models/xela_toggle_models.dart';
import '../xelauikit/xela_color.dart';
import '../xelauikit/xela_divider.dart';
import '../xelauikit/xela_slider_input.dart';
import '../xelauikit/xela_text_style.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class SliderInputComponent extends StatefulWidget {
  const SliderInputComponent({Key? key}) : super(key: key);

  @override
  _SliderInputComponentState createState() => _SliderInputComponentState();
}

class _SliderInputComponentState extends State<SliderInputComponent> {

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
                          child: Text("Slider Input", style: XelaTextStyle.XelaSubheadline.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)
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
                          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 24),
                          decoration: BoxDecoration(
                              color: _isDark ? XelaColor.Gray2 : XelaColor.Gray12,
                            borderRadius: BorderRadius.circular(32)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.dark_mode, size: 20, color: XelaColor.Gray6),
                              Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 0),
                                    child: XelaSliderInput(
                                      value: 40,
                                      primaryColor: XelaColor.Green2,
                                      secondaryColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                                      controlColor: _isDark ? XelaColor.Gray12 : Colors.white,
                                    ),
                                  )
                              ),
                              Icon(Icons.light_mode, size: 20, color: XelaColor.Gray6)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Horizontal", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      XelaSliderInput(
                        value: 40,
                        divisions: 10,
                        primaryColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                        secondaryColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                        controlColor: _isDark ? XelaColor.Gray12 : Colors.white,
                      ),
                      XelaSliderInput(
                        value: 60,
                        primaryColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                        secondaryColor: _isDark ? XelaColor.Orange3 : XelaColor.Orange5,
                        controlColor: _isDark ? XelaColor.Gray12 : Colors.white,
                      ),
                      XelaSliderInput(
                        value: 40,
                        divisions: 10,
                        disabled: true,
                        primaryColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                        secondaryColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                        controlColor: _isDark ? XelaColor.Gray12 : Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Vertical", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      SizedBox(
                        height: 300,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(child: Container(),),
                            XelaSliderInput(
                              value: 40,
                              divisions: 10,
                              primaryColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              secondaryColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              controlColor: _isDark ? XelaColor.Gray12 : Colors.white,
                              vertical: true,
                            ),
                            XelaSliderInput(
                              value: 60,
                              primaryColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              secondaryColor: _isDark ? XelaColor.Orange3 : XelaColor.Orange5,
                              controlColor: _isDark ? XelaColor.Gray12 : Colors.white,
                              vertical: true,
                            ),
                            XelaSliderInput(
                              value: 40,
                              divisions: 10,
                              disabled: true,
                              primaryColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              secondaryColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              controlColor: _isDark ? XelaColor.Gray12 : Colors.white,
                              vertical: true,
                            ),
                            Expanded(child: Container(),),
                          ],
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