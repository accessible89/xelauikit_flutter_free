import 'package:flutter/material.dart';

import '../xelauikit/models/xela_toggle_models.dart';
import '../xelauikit/xela_color.dart';
import '../xelauikit/xela_divider.dart';
import '../xelauikit/xela_text_style.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ColorsComponent extends StatefulWidget {
  const ColorsComponent({Key? key}) : super(key: key);

  @override
  _ColorsComponentState createState() => _ColorsComponentState();
}

class _ColorsComponentState extends State<ColorsComponent> {

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
                          child: Text("Colors", style: XelaTextStyle.XelaSubheadline.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)
                      ),
                    ],
                  )
              ),
              Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Main Colors", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Blue,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Blue", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Pink,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Pink", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Green,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Green", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Yellow,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Orange,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Red,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Purple,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Gray,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Gray", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Gray shades", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Gray1,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Gray1", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Gray2,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Gray2", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Gray3,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Gray3", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Gray4,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Gray4", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Gray5,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Gray5", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Gray6,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Gray6", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Gray7,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Gray7", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Gray8,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Gray8", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Gray9,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Gray9", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Gray10,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Gray10", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Gray11,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Gray11", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Gray12,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Gray12", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Blue shades", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Blue1,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Blue1", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Blue2,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Blue2", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Blue3,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Blue3", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Blue4,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Blue4", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Blue5,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Blue5", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Blue6,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Blue6", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Blue7,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Blue7", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Blue8,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Blue8", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Blue9,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Blue9", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Blue10,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Blue10", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Blue11,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Blue11", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Blue12,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Blue12", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Pink shades", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Pink1,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Pink1", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Pink2,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Pink2", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Pink3,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Pink3", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Pink4,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Pink4", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Pink5,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Pink5", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Pink6,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Pink6", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Pink7,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Pink7", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Pink8,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Pink8", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Pink9,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Pink9", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Pink10,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Pink10", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Pink11,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Pink11", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Pink12,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Pink12", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Green shades", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Green1,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Green1", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Green2,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Green2", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Green3,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Green3", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Green4,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Green4", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Green5,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Green5", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Green6,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Green6", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Green7,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Green7", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Green8,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Green8", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Green9,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Green9", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Green10,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Green10", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Green11,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Green11", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Green12,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Green12", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Yellow shades", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Yellow1,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow1", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Yellow2,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow2", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Yellow3,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow3", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Yellow4,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow4", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Yellow5,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow5", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Yellow6,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow6", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Yellow7,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow7", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Yellow8,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow8", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Yellow9,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow9", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Yellow10,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow10", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Yellow11,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow11", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Yellow12,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow12", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Orange shades", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Orange1,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange1", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Orange2,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange2", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Orange3,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange3", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Orange4,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange4", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Orange5,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange5", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Orange6,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange6", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Orange7,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange7", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Orange8,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange8", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Orange9,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange9", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Orange10,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange10", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Orange11,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange11", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Orange12,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange12", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Red shades", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Red1,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red1", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Red2,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red2", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Red3,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red3", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Red4,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red4", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Red5,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red5", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Red6,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red6", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Red7,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red7", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Red8,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red8", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Red9,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red9", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Red10,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red10", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Red11,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red11", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Red12,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red12", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Purple shades", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Purple1,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple1", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Purple2,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple2", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Purple3,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple3", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Purple4,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple4", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Purple5,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple5", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Purple6,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple6", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Purple7,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple7", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Purple8,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple8", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Purple9,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple9", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Purple10,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple10", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Purple11,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple11", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                              Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                    color: XelaColor.Purple12,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple12", style: XelaTextStyle.XelaCaption.apply(color: Colors.black),),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Gradients", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Pink, XelaColor.Blue], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Pink to .Blue", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Green, XelaColor.Blue], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Green to .Blue", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Yellow, XelaColor.Blue], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow to .Blue", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Orange, XelaColor.Blue], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange to .Blue", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Red, XelaColor.Blue], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red to .Blue", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Purple, XelaColor.Blue], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple to .Blue", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Green, XelaColor.Pink], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Green to .Pink", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Yellow, XelaColor.Pink], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow to .Pink", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Orange, XelaColor.Pink], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange to .Pink", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Red, XelaColor.Pink], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red to .Pink", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Purple, XelaColor.Pink], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple to .Pink", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Red, XelaColor.Orange], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red to .Orange", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Orange, XelaColor.Yellow], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange to .Yellow", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Red, XelaColor.Yellow], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red to .Yellow", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Purple, XelaColor.Yellow], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple to .Yellow", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Purple, XelaColor.Orange], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple to .Orange", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Purple, XelaColor.Red], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Purple to .Red", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Red, XelaColor.Green], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Red to .Green", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
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
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Yellow, XelaColor.Green], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Yellow to .Green", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                              Container(
                                width: 136,
                                height: 68,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(colors: [XelaColor.Orange, XelaColor.Green], begin: Alignment.bottomLeft, end: Alignment.topRight),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                alignment: Alignment.center,
                                child: Text(".Orange to .Green", style: XelaTextStyle.XelaCaption.apply(color: Colors.white),),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
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