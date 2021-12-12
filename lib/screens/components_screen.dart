import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import '../components/accordion_component.dart';
import '../components/alert_component.dart';
import '../components/badge_component.dart';
import '../components/buttons_component.dart';
import '../components/checkbox_component.dart';
import '../components/chips_component.dart';
import '../components/colors_component.dart';
import '../components/divider_component.dart';
import '../components/slide_input_component.dart';
import '../components/text_input_component.dart';
import '../components/typography_component.dart';
import '../components/user_avatar_component.dart';
import '../xelauikit/models/xela_button_models.dart';
import '../xelauikit/xela_button.dart';
import '../xelauikit/xela_color.dart';
import '../xelauikit/xela_text_style.dart';

class ComponentsScreen extends StatefulWidget {
  const ComponentsScreen({Key? key}) : super(key: key);

  @override
  _ComponentsScreenState createState() => _ComponentsScreenState();
}

class _ComponentsScreenState extends State<ComponentsScreen> {


  @override
  Widget build(BuildContext context) {


    var children = <Widget>[];
    children.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Text(
              "Ready-to-use components and automatic styling. A rich variety of UI components specially designed for mobile apps. Xela Design System provides tabs, side menu, stack navigation and tons of other components such as lists and forms.",
              style: XelaTextStyle.XelaSmallBody.apply(color: XelaColor.Gray6)
          ),
        )
    );

    children.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: XelaButton(
            text: "Typography",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TypographyComponent()),
              );
            },
            horizontalAlignment: MainAxisAlignment.start,
            size: XelaButtonSize.MEDIUM,
            background: XelaColor.Gray12,
            foregroundColor: XelaColor.Gray2,
            autoResize: false,
          ),
        )
    );

    children.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: XelaButton(
            text: "Colors",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ColorsComponent()),
              );
            },
            horizontalAlignment: MainAxisAlignment.start,
            size: XelaButtonSize.MEDIUM,
            background: XelaColor.Gray12,
            foregroundColor: XelaColor.Gray2,
            autoResize: false,
          ),
        )
    );

    children.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: XelaButton(
            text: "Buttons",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ButtonsComponent()),
              );
            },
            horizontalAlignment: MainAxisAlignment.start,
            size: XelaButtonSize.MEDIUM,
            background: XelaColor.Gray12,
            foregroundColor: XelaColor.Gray2,
            autoResize: false,
          ),
        )
    );

    children.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: XelaButton(
            text: "Text Input",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TextInputComponent()),
              );
            },
            horizontalAlignment: MainAxisAlignment.start,
            size: XelaButtonSize.MEDIUM,
            background: XelaColor.Gray12,
            foregroundColor: XelaColor.Gray2,
            autoResize: false,
          ),
        )
    );

    children.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: XelaButton(
            text: "User Avatar",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserAvatarComponent()),
              );
            },
            horizontalAlignment: MainAxisAlignment.start,
            size: XelaButtonSize.MEDIUM,
            background: XelaColor.Gray12,
            foregroundColor: XelaColor.Gray2,
            autoResize: false,
          ),
        )
    );


    children.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: XelaButton(
            text: "Checkbox",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CheckboxComponent()),
              );
            },
            horizontalAlignment: MainAxisAlignment.start,
            size: XelaButtonSize.MEDIUM,
            background: XelaColor.Gray12,
            foregroundColor: XelaColor.Gray2,
            autoResize: false,
          ),
        )
    );

    children.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: XelaButton(
            text: "Slider Input",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SliderInputComponent()),
              );
            },
            horizontalAlignment: MainAxisAlignment.start,
            size: XelaButtonSize.MEDIUM,
            background: XelaColor.Gray12,
            foregroundColor: XelaColor.Gray2,
            autoResize: false,
          ),
        )
    );

    children.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: XelaButton(
            text: "Badge",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BadgeComponent()),
              );
            },
            horizontalAlignment: MainAxisAlignment.start,
            size: XelaButtonSize.MEDIUM,
            background: XelaColor.Gray12,
            foregroundColor: XelaColor.Gray2,
            autoResize: false,
          ),
        )
    );

    children.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: XelaButton(
            text: "Alert",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AlertComponent()),
              );
            },
            horizontalAlignment: MainAxisAlignment.start,
            size: XelaButtonSize.MEDIUM,
            background: XelaColor.Gray12,
            foregroundColor: XelaColor.Gray2,
            autoResize: false,
          ),
        )
    );

    children.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: XelaButton(
            text: "Chips",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChipsComponent()),
              );
            },
            horizontalAlignment: MainAxisAlignment.start,
            size: XelaButtonSize.MEDIUM,
            background: XelaColor.Gray12,
            foregroundColor: XelaColor.Gray2,
            autoResize: false,
          ),
        )
    );

    children.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: XelaButton(
            text: "Accordion",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AccordionComponent()),
              );
            },
            horizontalAlignment: MainAxisAlignment.start,
            size: XelaButtonSize.MEDIUM,
            background: XelaColor.Gray12,
            foregroundColor: XelaColor.Gray2,
            autoResize: false,
          ),
        )
    );

    children.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: XelaButton(
            text: "Divider",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DividerComponent()),
              );
            },
            horizontalAlignment: MainAxisAlignment.start,
            size: XelaButtonSize.MEDIUM,
            background: XelaColor.Gray12,
            foregroundColor: XelaColor.Gray2,
            autoResize: false,
          ),
        )
    );


    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: kIsWeb ? 0 : 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text("Xela UI Kit Components", style: XelaTextStyle.XelaHeadline.apply(color: XelaColor.Gray2),)
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: children,
                )
              )
            ],
          ),
        )
    );
  }
}