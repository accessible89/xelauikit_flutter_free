import 'package:flutter/material.dart';
import '../xelauikit/models/xela_toggle_models.dart';
import '../xelauikit/xela_color.dart';
import '../xelauikit/xela_text_style.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class TypographyComponent extends StatefulWidget {
  const TypographyComponent({Key? key}) : super(key: key);

  @override
  _TypographyComponentState createState() => _TypographyComponentState();
}

class _TypographyComponentState extends State<TypographyComponent> {

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
                          child: Text("Typography", style: XelaTextStyle.XelaSubheadline.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)
                      ),
                    ],
                  )
              ),
              Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text("Title1", style: XelaTextStyle.XelaTitle1.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text("Title2", style: XelaTextStyle.XelaTitle2.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text("Title3", style: XelaTextStyle.XelaTitle3.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text("Headline", style: XelaTextStyle.XelaHeadline.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text("Subheadline", style: XelaTextStyle.XelaSubheadline.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text("Body", style: XelaTextStyle.XelaBody.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text("Body Bold", style: XelaTextStyle.XelaBodyBold.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text("Small Body", style: XelaTextStyle.XelaSmallBody.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text("Small Body Bold", style: XelaTextStyle.XelaSmallBodyBold.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text("Caption", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text("Button Large", style: XelaTextStyle.XelaButtonLarge.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text("Button Medium", style: XelaTextStyle.XelaButtonMedium.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text("Button Small", style: XelaTextStyle.XelaButtonSmall.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),),
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
