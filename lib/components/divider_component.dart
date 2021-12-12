import 'package:flutter/material.dart';

import '../xelauikit/models/xela_divider_models.dart';
import '../xelauikit/models/xela_toggle_models.dart';
import '../xelauikit/xela_color.dart';
import '../xelauikit/xela_divider.dart';
import '../xelauikit/xela_text_style.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class DividerComponent extends StatefulWidget {
  const DividerComponent({Key? key}) : super(key: key);

  @override
  _DividerComponentState createState() => _DividerComponentState();
}

class _DividerComponentState extends State<DividerComponent> {

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
                          child: Text("Divider", style: XelaTextStyle.XelaSubheadline.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)
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
                          child: Text("Horizontal", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: XelaDivider(
                          style: XelaDividerStyle.SOLID,
                          orientation: XelaDividerOrientation.HORIZONTAL,
                          color: _isDark ? XelaColor.Gray4 : XelaColor.Gray10,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: XelaDivider(
                          style: XelaDividerStyle.DASHED,
                          orientation: XelaDividerOrientation.HORIZONTAL,
                          color: _isDark ? XelaColor.Gray4 : XelaColor.Gray10,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: XelaDivider(
                          style: XelaDividerStyle.DOTTED,
                          orientation: XelaDividerOrientation.HORIZONTAL,
                          color: _isDark ? XelaColor.Gray4 : XelaColor.Gray10,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Vertical", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                            height: 200,
                            child: XelaDivider(
                              style: XelaDividerStyle.SOLID,
                              orientation: XelaDividerOrientation.VERTICAL,
                              color: _isDark ? XelaColor.Gray4 : XelaColor.Gray10,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                            height: 200,
                            child: XelaDivider(
                              style: XelaDividerStyle.DASHED,
                              orientation: XelaDividerOrientation.VERTICAL,
                              color: _isDark ? XelaColor.Gray4 : XelaColor.Gray10,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                            height: 200,
                            child: XelaDivider(
                              style: XelaDividerStyle.DOTTED,
                              orientation: XelaDividerOrientation.VERTICAL,
                              color: _isDark ? XelaColor.Gray4 : XelaColor.Gray10,
                            ),
                          ),
                        ],
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