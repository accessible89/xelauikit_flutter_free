import 'package:flutter/material.dart';

import '../xelauikit/models/xela_toggle_models.dart';
import '../xelauikit/xela_color.dart';
import '../xelauikit/xela_text_style.dart';
import '../xelauikit/xela_textfield.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class TextInputComponent extends StatefulWidget {
  const TextInputComponent({Key? key}) : super(key: key);

  @override
  _TextInputComponentState createState() => _TextInputComponentState();
}

class _TextInputComponentState extends State<TextInputComponent> {

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
                        hoverElevation: 0,
                        highlightElevation: 0,
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
                          child: Text("Text Input", style: XelaTextStyle.XelaSubheadline.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)
                      ),
                    ],
                  )
              ),
              Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: XelaTextField(
                            placeholder: "TextField Placeholder",
                            background: _isDark ? Colors.transparent : Colors.white,
                            borderDefaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                            placeholderColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                            textfieldColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                            borderFocusColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                            defaultHelperTextColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: XelaTextField(
                          placeholder: "TextField Placeholder",
                          background: _isDark ? Colors.transparent : Colors.white,
                          borderDefaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                          placeholderColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          textfieldColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                          borderFocusColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                          defaultHelperTextColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          helperText: "Helper Text",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: XelaTextField(
                          placeholder: "TextField Placeholder",
                          background: _isDark ? Colors.transparent : Colors.white,
                          borderDefaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                          placeholderColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          textfieldColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                          borderFocusColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                          defaultHelperTextColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          leftIcon: Icon(Icons.grid_view, size: 15, color: XelaColor.Gray3),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: XelaTextField(
                          placeholder: "TextField Placeholder",
                          background: _isDark ? Colors.transparent : Colors.white,
                          borderDefaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                          placeholderColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          textfieldColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                          borderFocusColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                          defaultHelperTextColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          leftIcon: Icon(Icons.grid_view, size: 15, color: XelaColor.Gray3),
                          helperText: "Helper Text",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: XelaTextField(
                          placeholder: "TextField Placeholder",
                          background: _isDark ? Colors.transparent : Colors.white,
                          borderDefaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                          placeholderColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          textfieldColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                          borderFocusColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                          defaultHelperTextColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          rightIcon: Icon(Icons.grid_view, size: 15, color: XelaColor.Gray3),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: XelaTextField(
                          placeholder: "TextField Placeholder",
                          background: _isDark ? Colors.transparent : Colors.white,
                          borderDefaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                          placeholderColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          textfieldColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                          borderFocusColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                          defaultHelperTextColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          rightIcon: Icon(Icons.grid_view, size: 15, color: XelaColor.Gray3),
                          helperText: "Helper Text",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: XelaTextField(
                          placeholder: "TextField Placeholder",
                          background: _isDark ? Colors.transparent : Colors.white,
                          borderDefaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                          placeholderColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          textfieldColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                          borderFocusColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                          defaultHelperTextColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          leftIcon: Icon(Icons.grid_view, size: 15, color: XelaColor.Gray3),
                          rightIcon: Icon(Icons.grid_view, size: 15, color: XelaColor.Gray3),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: XelaTextField(
                          placeholder: "TextField Placeholder",
                          background: _isDark ? Colors.transparent : Colors.white,
                          borderDefaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                          placeholderColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          textfieldColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                          borderFocusColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                          defaultHelperTextColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          leftIcon: Icon(Icons.grid_view, size: 15, color: XelaColor.Gray3),
                          rightIcon: Icon(Icons.grid_view, size: 15, color: XelaColor.Gray3),
                          helperText: "Helper Text",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: XelaTextField(
                          placeholder: "SecureField Placeholder",
                          background: _isDark ? Colors.transparent : Colors.white,
                          borderDefaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                          placeholderColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          textfieldColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                          borderFocusColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                          defaultHelperTextColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          leftIcon: Icon(Icons.grid_view, size: 15, color: XelaColor.Gray3),
                          rightIcon: Icon(Icons.grid_view, size: 15, color: XelaColor.Gray3),
                          secureField: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: XelaTextField(
                          placeholder: "SecureField Placeholder",
                          background: _isDark ? Colors.transparent : Colors.white,
                          borderDefaultColor: _isDark ? XelaColor.Gray4 : XelaColor.Gray11,
                          placeholderColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          textfieldColor: _isDark ? XelaColor.Gray11 : XelaColor.Gray2,
                          borderFocusColor: _isDark ? XelaColor.Blue5 : XelaColor.Blue3,
                          defaultHelperTextColor: _isDark ? XelaColor.Gray6 : XelaColor.Gray8,
                          leftIcon: Icon(Icons.grid_view, size: 15, color: XelaColor.Gray3),
                          rightIcon: Icon(Icons.grid_view, size: 15, color: XelaColor.Gray3),
                          helperText: "Helper Text",
                          secureField: true,
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