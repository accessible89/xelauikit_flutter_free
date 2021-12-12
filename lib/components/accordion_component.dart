import 'package:flutter/material.dart';
import '../xelauikit/models/xela_accordion_models.dart';
import '../xelauikit/models/xela_divider_models.dart';
import '../xelauikit/models/xela_toggle_models.dart';
import '../xelauikit/xela_accordion.dart';
import '../xelauikit/xela_color.dart';
import '../xelauikit/xela_divider.dart';
import '../xelauikit/xela_text_style.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class AccordionComponent extends StatefulWidget {
  const AccordionComponent({Key? key}) : super(key: key);

  @override
  _AccordionComponentState createState() => _AccordionComponentState();
}

class _AccordionComponentState extends State<AccordionComponent> {

  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _isDark ? XelaColor.Gray1 : Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: kIsWeb ? 0 :24),
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
                          child: Text("Accordion", style: XelaTextStyle.XelaSubheadline.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)
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
                        child: XelaAccordion(
                            title: "Accordion 1",
                            iconPosition: XelaAccordionIconPosition.RIGHT,
                            openIcon: Icon(Icons.keyboard_arrow_up, size: 24, color: _isDark ? XelaColor.Gray4 : XelaColor.Gray11),
                            closeIcon: Icon(Icons.keyboard_arrow_down, size: 24, color: _isDark ? XelaColor.Gray4 : XelaColor.Gray11),
                            content: Column(
                              children: [
                                XelaDivider(color: _isDark ? XelaColor.Gray4 : XelaColor.Gray11, style: XelaDividerStyle.DOTTED,),
                                SizedBox(height: 16,),
                                Text("Placeholder content for this accordion. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.", style: XelaTextStyle.XelaSmallBody.apply(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray3),)
                              ],
                            ),
                          closeBackground: _isDark ? XelaColor.Yellow8 : XelaColor.Yellow12,
                          openBackground: _isDark ? XelaColor.Yellow8 : XelaColor.Yellow12,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: XelaAccordion(
                          title: "Accordion 2",
                          iconPosition: XelaAccordionIconPosition.LEFT,
                          openIcon: Icon(Icons.remove_circle, size: 24, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                          closeIcon: Icon(Icons.add_circle, size: 24, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),
                          content: Column(
                            children: [
                              XelaDivider(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2, style: XelaDividerStyle.DOTTED,),
                              SizedBox(height: 16,),
                              Text("Placeholder content for this accordion. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.", style: XelaTextStyle.XelaSmallBody.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)
                            ],
                          ),
                          closeBackground: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                          openBackground: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                          closeTitleColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                          openTitleColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: XelaAccordion(
                          title: "Accordion 3",
                          iconPosition: XelaAccordionIconPosition.LEFT,
                          openIcon: Icon(Icons.remove_circle, size: 24, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),
                          closeIcon: Icon(Icons.add_circle, size: 24, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),
                          content: Column(
                            children: [
                              XelaDivider(color: _isDark ? XelaColor.Gray4 : XelaColor.Gray9, style: XelaDividerStyle.DOTTED,),
                              SizedBox(height: 16,),
                              Text("Placeholder content for this accordion. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.", style: XelaTextStyle.XelaSmallBody.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)
                            ],
                          ),
                          closeBackground: Colors.transparent,
                          openBackground: Colors.transparent,
                          closeTitleColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                          openTitleColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                        ),
                      )



                    ],
                  )
              )
            ],
          ),
        )
    );
  }
}