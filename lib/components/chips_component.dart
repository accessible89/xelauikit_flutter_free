import 'package:flutter/material.dart';

import '../xelauikit/models/xela_chip_models.dart';
import '../xelauikit/models/xela_toggle_models.dart';
import '../xelauikit/xela_chip.dart';
import '../xelauikit/xela_color.dart';
import '../xelauikit/xela_divider.dart';
import '../xelauikit/xela_text_style.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ChipsComponent extends StatefulWidget {
  const ChipsComponent({Key? key}) : super(key: key);

  @override
  _ChipsComponentState createState() => _ChipsComponentState();
}

class _ChipsComponentState extends State<ChipsComponent> {

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
                          child: Text("Chips", style: XelaTextStyle.XelaSubheadline.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)
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
                            borderRadius: BorderRadius.circular(24),
                            color: _isDark ? XelaColor.Gray2 : XelaColor.Gray12
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Pick a few to help us\n" +
                                  "personalize your account", style: XelaTextStyle.XelaHeadline.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 24),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        XelaChip(
                                            text: "Design",
                                            size: XelaChipSize.LARGE,
                                            borderWidth: 0,
                                            defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                                            selectedBackgroundColor:  _isDark ? XelaColor.Blue5 : XelaColor.Blue6,
                                            defaultContentColor:  _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                            selectedContentColor:  _isDark ? Colors.white : Colors.white,
                                            defaultBorderColor: Colors.transparent,
                                            selectedBorderColor: Colors.transparent
                                        ),
                                        SizedBox(width: 8,),
                                        XelaChip(
                                            text: "Arts",
                                            size: XelaChipSize.LARGE,
                                            borderWidth: 0,
                                            defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                                            selectedBackgroundColor:  _isDark ? XelaColor.Blue5 : XelaColor.Blue6,
                                            defaultContentColor:  _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                            selectedContentColor:  _isDark ? Colors.white : Colors.white,
                                            defaultBorderColor: Colors.transparent,
                                            selectedBorderColor: Colors.transparent
                                        ),
                                        SizedBox(width: 8,),
                                        XelaChip(
                                            text: "Architecture",
                                            size: XelaChipSize.LARGE,
                                            borderWidth: 0,
                                            defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                                            selectedBackgroundColor:  _isDark ? XelaColor.Blue5 : XelaColor.Blue6,
                                            defaultContentColor:  _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                            selectedContentColor:  _isDark ? Colors.white : Colors.white,
                                            defaultBorderColor: Colors.transparent,
                                            selectedBorderColor: Colors.transparent,
                                          selected: true,
                                        ),
                                        SizedBox(width: 8,),
                                        XelaChip(
                                            text: "UI Design",
                                            size: XelaChipSize.LARGE,
                                            borderWidth: 0,
                                            defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                                            selectedBackgroundColor:  _isDark ? XelaColor.Blue5 : XelaColor.Blue6,
                                            defaultContentColor:  _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                            selectedContentColor:  _isDark ? Colors.white : Colors.white,
                                            defaultBorderColor: Colors.transparent,
                                            selectedBorderColor: Colors.transparent
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        XelaChip(
                                            text: "Business",
                                            size: XelaChipSize.LARGE,
                                            borderWidth: 0,
                                            defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                                            selectedBackgroundColor:  _isDark ? XelaColor.Blue5 : XelaColor.Blue6,
                                            defaultContentColor:  _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                            selectedContentColor:  _isDark ? Colors.white : Colors.white,
                                            defaultBorderColor: Colors.transparent,
                                            selectedBorderColor: Colors.transparent,
                                          selected: true,
                                        ),
                                        SizedBox(width: 8,),
                                        XelaChip(
                                            text: "HTML & CSS",
                                            size: XelaChipSize.LARGE,
                                            borderWidth: 0,
                                            defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                                            selectedBackgroundColor:  _isDark ? XelaColor.Blue5 : XelaColor.Blue6,
                                            defaultContentColor:  _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                            selectedContentColor:  _isDark ? Colors.white : Colors.white,
                                            defaultBorderColor: Colors.transparent,
                                            selectedBorderColor: Colors.transparent
                                        ),
                                        SizedBox(width: 8,),
                                        XelaChip(
                                            text: "User Experience",
                                            size: XelaChipSize.LARGE,
                                            borderWidth: 0,
                                            defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                                            selectedBackgroundColor:  _isDark ? XelaColor.Blue5 : XelaColor.Blue6,
                                            defaultContentColor:  _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                            selectedContentColor:  _isDark ? Colors.white : Colors.white,
                                            defaultBorderColor: Colors.transparent,
                                            selectedBorderColor: Colors.transparent
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        XelaChip(
                                            text: "Prototyping",
                                            size: XelaChipSize.LARGE,
                                            borderWidth: 0,
                                            defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                                            selectedBackgroundColor:  _isDark ? XelaColor.Blue5 : XelaColor.Blue6,
                                            defaultContentColor:  _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                            selectedContentColor:  _isDark ? Colors.white : Colors.white,
                                            defaultBorderColor: Colors.transparent,
                                            selectedBorderColor: Colors.transparent
                                        ),
                                        SizedBox(width: 8,),
                                        XelaChip(
                                            text: "Mobile",
                                            size: XelaChipSize.LARGE,
                                            borderWidth: 0,
                                            defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                                            selectedBackgroundColor:  _isDark ? XelaColor.Blue5 : XelaColor.Blue6,
                                            defaultContentColor:  _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                            selectedContentColor:  _isDark ? Colors.white : Colors.white,
                                            defaultBorderColor: Colors.transparent,
                                            selectedBorderColor: Colors.transparent,
                                          selected: true,
                                        ),
                                        SizedBox(width: 8,),
                                        XelaChip(
                                            text: "Development",
                                            size: XelaChipSize.LARGE,
                                            borderWidth: 0,
                                            defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                                            selectedBackgroundColor:  _isDark ? XelaColor.Blue5 : XelaColor.Blue6,
                                            defaultContentColor:  _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                            selectedContentColor:  _isDark ? Colors.white : Colors.white,
                                            defaultBorderColor: Colors.transparent,
                                            selectedBorderColor: Colors.transparent
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              Text("You can change these anytime in your profile settings. These just helps us to recommend topics you are interested in", style: XelaTextStyle.XelaCaption.apply(color: XelaColor.Gray6),)
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Large", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            XelaChip(
                              text: "Label",
                              defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              selectedContentColor: _isDark ? Colors.white : Colors.white,
                              defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              selectedBorderColor: Colors.transparent
                            ),
                            XelaChip(
                                text: "Label",
                                defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                                selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                selectedContentColor: _isDark ? Colors.white : Colors.white,
                                defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                selectedBorderColor: Colors.transparent,
                              selected: true,
                            ),
                            XelaChip(
                                text: "Label",
                                defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                                selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                selectedContentColor: _isDark ? Colors.white : Colors.white,
                                defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                selectedBorderColor: Colors.transparent,
                              disabled: true,
                            ),
                            XelaChip(
                                text: "Label",
                                defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                                selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                selectedContentColor: _isDark ? Colors.white : Colors.white,
                                defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                selectedBorderColor: Colors.transparent,
                              disabled: true,
                              selected: true,
                            ),
                          ],
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            XelaChip(
                                text: "Label",
                                leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                                defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                                selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                selectedContentColor: _isDark ? Colors.white : Colors.white,
                                defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                selectedBorderColor: Colors.transparent
                            ),
                            XelaChip(
                              text: "Label",
                              leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                              leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                              defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              selectedContentColor: _isDark ? Colors.white : Colors.white,
                              defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              selectedBorderColor: Colors.transparent,
                              selected: true,
                            ),
                            XelaChip(
                              text: "Label",
                              leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                              leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                              defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              selectedContentColor: _isDark ? Colors.white : Colors.white,
                              defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              selectedBorderColor: Colors.transparent,
                              disabled: true,
                            ),
                            XelaChip(
                              text: "Label",
                              leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                              leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                              defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              selectedContentColor: _isDark ? Colors.white : Colors.white,
                              defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              selectedBorderColor: Colors.transparent,
                              disabled: true,
                              selected: true,
                            ),
                          ],
                        ),
                      ),

                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            XelaChip(
                                text: "Label",
                                rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                                defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                                selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                selectedContentColor: _isDark ? Colors.white : Colors.white,
                                defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                selectedBorderColor: Colors.transparent
                            ),
                            XelaChip(
                              text: "Label",
                              rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                              rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                              defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              selectedContentColor: _isDark ? Colors.white : Colors.white,
                              defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              selectedBorderColor: Colors.transparent,
                              selected: true,
                            ),
                            XelaChip(
                              text: "Label",
                              rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                              rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                              defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              selectedContentColor: _isDark ? Colors.white : Colors.white,
                              defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              selectedBorderColor: Colors.transparent,
                              disabled: true,
                            ),
                            XelaChip(
                              text: "Label",
                              rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                              rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                              defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              selectedContentColor: _isDark ? Colors.white : Colors.white,
                              defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              selectedBorderColor: Colors.transparent,
                              disabled: true,
                              selected: true,
                            ),
                          ],
                        ),
                      ),

                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child:
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                XelaChip(
                                    text: "Label",
                                    leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                    leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                                    rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                    rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                                    defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                                    selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                    defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                    selectedContentColor: _isDark ? Colors.white : Colors.white,
                                    defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                    selectedBorderColor: Colors.transparent
                                ),
                                XelaChip(
                                  text: "Label",
                                  leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                  leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                                  rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                  rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                                  defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                                  selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                  defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                  selectedContentColor: _isDark ? Colors.white : Colors.white,
                                  defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                  selectedBorderColor: Colors.transparent,
                                  selected: true,
                                ),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                XelaChip(
                                  text: "Label",
                                  leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                  leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                                  rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                  rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                                  defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                                  selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                  defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                  selectedContentColor: _isDark ? Colors.white : Colors.white,
                                  defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                  selectedBorderColor: Colors.transparent,
                                  disabled: true,
                                ),
                                XelaChip(
                                  text: "Label",
                                  leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                  leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                                  rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue5 : XelaColor.Blue3),
                                  rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? Colors.white : Colors.white),
                                  defaultBackgroundColor: _isDark ? Colors.transparent : Colors.white,
                                  selectedBackgroundColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                  defaultContentColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                  selectedContentColor: _isDark ? Colors.white : Colors.white,
                                  defaultBorderColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                                  selectedBorderColor: Colors.transparent,
                                  disabled: true,
                                  selected: true,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Medium", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            XelaChip(
                              size: XelaChipSize.MEDIUM,
                                text: "Label",
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                              defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                              selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.MEDIUM,
                              text: "Label",
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                              defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                              selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                              selected: true,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.MEDIUM,
                              text: "Label",
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                              defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                              selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                              disabled: true,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.MEDIUM,
                              text: "Label",
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                              defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                              selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                              disabled: true,
                              selected: true,
                              borderWidth: 1,
                            ),
                          ],
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            XelaChip(
                                size: XelaChipSize.MEDIUM,
                                text: "Label",
                              leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                              defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                              selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.MEDIUM,
                              text: "Label",
                              leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                              defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                              selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                              selected: true,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.MEDIUM,
                              text: "Label",
                              leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                              defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                              selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                              disabled: true,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.MEDIUM,
                              text: "Label",
                              leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                              defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                              selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                              disabled: true,
                              selected: true,
                              borderWidth: 1,
                            ),
                          ],
                        ),
                      ),

                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            XelaChip(
                                size: XelaChipSize.MEDIUM,
                                text: "Label",
                              rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                              defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                              selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.MEDIUM,
                              text: "Label",
                              rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                              defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                              selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                              selected: true,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.MEDIUM,
                              text: "Label",
                              rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                              defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                              selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                              disabled: true,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.MEDIUM,
                              text: "Label",
                              rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                              selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                              defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                              selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                              disabled: true,
                              selected: true,
                              borderWidth: 1,
                            ),
                          ],
                        ),
                      ),

                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child:
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                XelaChip(
                                    size: XelaChipSize.MEDIUM,
                                    text: "Label",
                                  leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                  rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                  defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                                  selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                                  defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                  selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                                  defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                                  selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                                  borderWidth: 1,
                                ),
                                XelaChip(
                                  size: XelaChipSize.MEDIUM,
                                  text: "Label",
                                  leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                  rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                  defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                                  selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                                  defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                  selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                                  defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                                  selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                                  selected: true,
                                  borderWidth: 1,
                                ),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                XelaChip(
                                  size: XelaChipSize.MEDIUM,
                                  text: "Label",
                                  leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                  rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                  defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                                  selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                                  defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                  selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                                  defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                                  selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                                  disabled: true,
                                  borderWidth: 1,
                                ),
                                XelaChip(
                                  size: XelaChipSize.MEDIUM,
                                  text: "Label",
                                  leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                  rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                  defaultBackgroundColor: _isDark ? XelaColor.Gray3 : Colors.white,
                                  selectedBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Blue11,
                                  defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                  selectedContentColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue3,
                                  defaultBorderColor: _isDark ? XelaColor.Gray5 : XelaColor.Gray10,
                                  selectedBorderColor: _isDark ? XelaColor.Blue6 : XelaColor.Blue6,
                                  disabled: true,
                                  selected: true,
                                  borderWidth: 1,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Small", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            XelaChip(
                              size: XelaChipSize.SMALL,
                              text: "Label",
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                              defaultBorderColor: Colors.transparent,
                              selectedBorderColor: Colors.transparent,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.SMALL,
                              text: "Label",
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                              defaultBorderColor: Colors.transparent,
                              selectedBorderColor: Colors.transparent,
                              selected: true,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.SMALL,
                              text: "Label",
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                              defaultBorderColor: Colors.transparent,
                              selectedBorderColor: Colors.transparent,
                              disabled: true,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.SMALL,
                              text: "Label",
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                              defaultBorderColor: Colors.transparent,
                              selectedBorderColor: Colors.transparent,
                              disabled: true,
                              selected: true,
                              borderWidth: 1,
                            ),
                          ],
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            XelaChip(
                              size: XelaChipSize.SMALL,
                              text: "Label",
                              leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                              defaultBorderColor: Colors.transparent,
                              selectedBorderColor: Colors.transparent,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.SMALL,
                              text: "Label",
                              leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                              defaultBorderColor: Colors.transparent,
                              selectedBorderColor: Colors.transparent,
                              selected: true,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.SMALL,
                              text: "Label",
                              leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                              defaultBorderColor: Colors.transparent,
                              selectedBorderColor: Colors.transparent,
                              disabled: true,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.SMALL,
                              text: "Label",
                              leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                              defaultBorderColor: Colors.transparent,
                              selectedBorderColor: Colors.transparent,
                              disabled: true,
                              selected: true,
                              borderWidth: 1,
                            ),
                          ],
                        ),
                      ),

                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            XelaChip(
                              size: XelaChipSize.SMALL,
                              text: "Label",
                              rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                              defaultBorderColor: Colors.transparent,
                              selectedBorderColor: Colors.transparent,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.SMALL,
                              text: "Label",
                              rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                              defaultBorderColor: Colors.transparent,
                              selectedBorderColor: Colors.transparent,
                              selected: true,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.SMALL,
                              text: "Label",
                              rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                              defaultBorderColor: Colors.transparent,
                              selectedBorderColor: Colors.transparent,
                              disabled: true,
                              borderWidth: 1,
                            ),
                            XelaChip(
                              size: XelaChipSize.SMALL,
                              text: "Label",
                              rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                              rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                              defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                              selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                              defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                              selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                              defaultBorderColor: Colors.transparent,
                              selectedBorderColor: Colors.transparent,
                              disabled: true,
                              selected: true,
                              borderWidth: 1,
                            ),
                          ],
                        ),
                      ),

                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child:
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                XelaChip(
                                  size: XelaChipSize.SMALL,
                                  text: "Label",
                                  leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                  rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                  defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                                  selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                                  defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                  selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                                  defaultBorderColor: Colors.transparent,
                                  selectedBorderColor: Colors.transparent,
                                  borderWidth: 1,
                                ),
                                XelaChip(
                                  size: XelaChipSize.SMALL,
                                  text: "Label",
                                  leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                  rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                  defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                                  selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                                  defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                  selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                                  defaultBorderColor: Colors.transparent,
                                  selectedBorderColor: Colors.transparent,
                                  selected: true,
                                  borderWidth: 1,
                                ),

                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                XelaChip(
                                  size: XelaChipSize.SMALL,
                                  text: "Label",
                                  leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                  rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                  defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                                  selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                                  defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                  selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                                  defaultBorderColor: Colors.transparent,
                                  selectedBorderColor: Colors.transparent,
                                  disabled: true,
                                  borderWidth: 1,
                                ),
                                XelaChip(
                                  size: XelaChipSize.SMALL,
                                  text: "Label",
                                  leftIconInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  leftIconActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                  rightButtonInactive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Gray11 : XelaColor.Gray6),
                                  rightButtonActive: Icon(Icons.grid_view, size: 20, color: _isDark ? XelaColor.Blue6 : XelaColor.Blue3),
                                    defaultBackgroundColor: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,
                                    selectedBackgroundColor: _isDark ? XelaColor.Blue8 : XelaColor.Blue12,
                                    defaultContentColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray6,
                                    selectedContentColor: _isDark ? XelaColor.Blue2 : XelaColor.Blue3,
                                    defaultBorderColor: Colors.transparent,
                                    selectedBorderColor: Colors.transparent,
                                  disabled: true,
                                  selected: true,
                                  borderWidth: 1,
                                ),
                              ],
                            )
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