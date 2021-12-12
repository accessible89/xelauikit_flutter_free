import 'package:flutter/material.dart';

import '../xelauikit/models/xela_checkbox_models.dart';
import '../xelauikit/models/xela_toggle_models.dart';
import '../xelauikit/xela_checkbox.dart';
import '../xelauikit/xela_color.dart';
import '../xelauikit/xela_divider.dart';
import '../xelauikit/xela_text_style.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class CheckboxComponent extends StatefulWidget {
  const CheckboxComponent({Key? key}) : super(key: key);

  @override
  _CheckboxComponentState createState() => _CheckboxComponentState();
}

class _CheckboxComponentState extends State<CheckboxComponent> {

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
                          child: Text("Checkbox", style: XelaTextStyle.XelaSubheadline.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)
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
                          child: Text("Large", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: XelaCheckbox(
                            checkboxIcon: Icon(Icons.done, color: Colors.white,),
                            label: "Label",
                            caption: "caption",
                            size: XelaCheckboxSize.LARGE,
                            selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                            defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                            valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                            labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                            captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                            disabled: false
                        )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              label: "Label",
                              size: XelaCheckboxSize.LARGE,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              caption: "caption",
                              size: XelaCheckboxSize.LARGE,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              label: "Label",
                              caption: "caption",
                              value: "value",
                              size: XelaCheckboxSize.LARGE,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              label: "Label",
                              value: "value",
                              size: XelaCheckboxSize.LARGE,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              caption: "caption",
                              value: "value",
                              size: XelaCheckboxSize.LARGE,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              label: "Label",
                              caption: "caption",
                              size: XelaCheckboxSize.LARGE,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              label: "Label",
                              size: XelaCheckboxSize.LARGE,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              caption: "caption",
                              size: XelaCheckboxSize.LARGE,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              label: "Label",
                              caption: "caption",
                              value: "value",
                              size: XelaCheckboxSize.LARGE,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              label: "Label",
                              value: "value",
                              size: XelaCheckboxSize.LARGE,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              caption: "caption",
                              value: "value",
                              size: XelaCheckboxSize.LARGE,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Medium", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              label: "Label",
                              caption: "caption",
                              size: XelaCheckboxSize.MEDIUM,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              label: "Label",
                              size: XelaCheckboxSize.MEDIUM,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              caption: "caption",
                              size: XelaCheckboxSize.MEDIUM,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              label: "Label",
                              caption: "caption",
                              value: "value",
                              size: XelaCheckboxSize.MEDIUM,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              label: "Label",
                              value: "value",
                              size: XelaCheckboxSize.MEDIUM,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              caption: "caption",
                              value: "value",
                              size: XelaCheckboxSize.MEDIUM,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              label: "Label",
                              caption: "caption",
                              size: XelaCheckboxSize.MEDIUM,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              label: "Label",
                              size: XelaCheckboxSize.MEDIUM,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              caption: "caption",
                              size: XelaCheckboxSize.MEDIUM,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              label: "Label",
                              caption: "caption",
                              value: "value",
                              size: XelaCheckboxSize.MEDIUM,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              label: "Label",
                              value: "value",
                              size: XelaCheckboxSize.MEDIUM,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              caption: "caption",
                              value: "value",
                              size: XelaCheckboxSize.MEDIUM,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Small", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              label: "Label",
                              caption: "caption",
                              size: XelaCheckboxSize.SMALL,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              label: "Label",
                              size: XelaCheckboxSize.SMALL,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              caption: "caption",
                              size: XelaCheckboxSize.SMALL,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              label: "Label",
                              caption: "caption",
                              value: "value",
                              size: XelaCheckboxSize.SMALL,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              label: "Label",
                              value: "value",
                              size: XelaCheckboxSize.SMALL,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.done, color: Colors.white,),
                              caption: "caption",
                              value: "value",
                              size: XelaCheckboxSize.SMALL,
                              selectedColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              label: "Label",
                              caption: "caption",
                              size: XelaCheckboxSize.SMALL,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              label: "Label",
                              size: XelaCheckboxSize.SMALL,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              caption: "caption",
                              size: XelaCheckboxSize.SMALL,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              label: "Label",
                              caption: "caption",
                              value: "value",
                              size: XelaCheckboxSize.SMALL,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              label: "Label",
                              value: "value",
                              size: XelaCheckboxSize.SMALL,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: XelaCheckbox(
                              checkboxIcon: Icon(Icons.remove, color: Colors.white,),
                              caption: "caption",
                              value: "value",
                              size: XelaCheckboxSize.SMALL,
                              selectedColor: _isDark ? XelaColor.Orange5 : XelaColor.Orange3,
                              defaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                              valueColor: _isDark ? XelaColor.Red5 : XelaColor.Red3,
                              labelColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                              captionColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                              disabled: false
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