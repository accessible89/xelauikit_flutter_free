
import 'package:flutter/material.dart';
import 'models/xela_textfield_models.dart';
import 'xela_color.dart';
import 'xela_text_style.dart';

class XelaTextField extends StatefulWidget {

  final String? placeholder;
  String? value;
  final TextEditingController? textEditingController;
  XelaTextFieldState state;
  String? helperText;
  Widget? leftIcon;
  Widget? rightIcon;
  final bool disableAutoCorrection;
  final bool secureField;
  final Color background;
  final Color disabledBackground;
  final Color placeholderColor;
  final Color textfieldColor;
  final Color disabledTextfieldColor;
  final Color borderDefaultColor;
  final Color borderDisabledColor;
  final Color borderErrorColor;
  final Color borderSuccessColor;
  final Color borderFocusColor;
  final Color defaultHelperTextColor;
  final Color disabledHelperTextColor;
  final Color errorHelperTextColor;
  final Color successHelperTextColor;
  final TextInputType keyboardType;
  Function(String)? onChange;


  XelaTextField({
    this.placeholder,
    this.value,
    this.textEditingController,
    this.state = XelaTextFieldState.DEFAULT,
    this.disableAutoCorrection = true,
    this.helperText,
    this.leftIcon,
    this.rightIcon,
    this.secureField = false,
    this.background = Colors.white,
    this.disabledBackground = XelaColor.Gray12,
    this.placeholderColor = XelaColor.Gray8,
    this.textfieldColor = XelaColor.Gray,
    this.disabledTextfieldColor = XelaColor.Gray8,
    this.borderDefaultColor = XelaColor.Gray11,
    this.borderDisabledColor = XelaColor.Gray8,
    this.borderErrorColor = XelaColor.Red3,
    this.borderSuccessColor = XelaColor.Green1,
    this.borderFocusColor = XelaColor.Blue5,
    this.defaultHelperTextColor = XelaColor.Gray8,
    this.disabledHelperTextColor = XelaColor.Gray8,
    this.errorHelperTextColor = XelaColor.Red3,
    this.successHelperTextColor = XelaColor.Green1,
    this.keyboardType = TextInputType.text,
    this.onChange,
  });

  @override
  _XelaTextFieldState createState() => _XelaTextFieldState();
}

class _XelaTextFieldState extends State<XelaTextField> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {

    // Clean up the focus nodes
    // when the form is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: widget.state == XelaTextFieldState.DISABLED ? widget.disabledBackground : widget.background,
            border: Border.all(
                color: widget.state == XelaTextFieldState.DEFAULT ? widget.borderDefaultColor :
                widget.state == XelaTextFieldState.FOCUS ? widget.borderFocusColor :
                widget.state == XelaTextFieldState.ERROR ? widget.borderErrorColor :
                widget.state == XelaTextFieldState.SUCCESS ? widget.borderSuccessColor : widget.borderDisabledColor,
                width: 1
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Focus(child: TextFormField(
            initialValue: widget.value,
            onChanged: widget.onChange,
            controller: widget.textEditingController,
            style: XelaTextStyle.XelaButtonMedium.apply(
              color: widget.state == XelaTextFieldState.DISABLED ? widget.disabledTextfieldColor : widget.textfieldColor,
            ),
            enabled: widget.state != XelaTextFieldState.DISABLED,
            maxLines: 1,
            cursorColor: widget.textfieldColor,
            decoration:InputDecoration(
              labelText: widget.placeholder,
              labelStyle: XelaTextStyle.XelaSmallBody.apply(color: widget.placeholderColor),
              floatingLabelStyle: XelaTextStyle.XelaSmallBody.apply(color: widget.placeholderColor),
              border: InputBorder.none,
              hoverColor: Colors.transparent,
              filled: true,
              fillColor: widget.state == XelaTextFieldState.DISABLED ? widget.disabledBackground : widget.background,
              prefixIcon: widget.leftIcon != null ? Padding(padding: const EdgeInsets.symmetric(vertical: 18), child: widget.leftIcon,) : null,
              suffixIcon: widget.rightIcon != null ? Padding(padding: const EdgeInsets.symmetric(vertical: 18), child: widget.rightIcon,) : null,
            ),
            autocorrect: !widget.disableAutoCorrection,
            obscureText: widget.secureField,
          ),
            onFocusChange: (hasFocus) {
              setState(() {
                if(hasFocus) {
                  widget.state = XelaTextFieldState.FOCUS;
                }
                else {
                  widget.state = XelaTextFieldState.DEFAULT;
                }
              });
            },
          ),
        ),
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: widget.helperText != null ? 8 : 0),
            child: widget.helperText != null ? Text(
              widget.helperText!,
              style: XelaTextStyle.XelaCaption.apply(color: widget.state == XelaTextFieldState.DEFAULT ? widget.defaultHelperTextColor :
              widget.state == XelaTextFieldState.ERROR ? widget.errorHelperTextColor :
              widget.state == XelaTextFieldState.SUCCESS ? widget.successHelperTextColor : widget.disabledHelperTextColor),
            ) : Container()
        )
      ],
    );
  }
}