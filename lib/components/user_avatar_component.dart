import 'package:flutter/material.dart';

import '../xelauikit/models/xela_toggle_models.dart';
import '../xelauikit/models/xela_user_avatar_models.dart';
import '../xelauikit/xela_color.dart';
import '../xelauikit/xela_divider.dart';
import '../xelauikit/xela_text_style.dart';
import '../xelauikit/xela_user_avatar.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class UserAvatarComponent extends StatefulWidget {
  const UserAvatarComponent({Key? key}) : super(key: key);

  @override
  _UserAvatarComponentState createState() => _UserAvatarComponentState();
}

class _UserAvatarComponentState extends State<UserAvatarComponent> {

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
                          child: Text("User Avatar", style: XelaTextStyle.XelaSubheadline.apply(color: _isDark ? XelaColor.Gray11 : XelaColor.Gray2),)
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
                          child: Text("Image", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                        Row(
                          children: [
                            XelaUserAvatar(
                              image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                              size: XelaUserAvatarSize.LARGE,
                            ),
                            XelaUserAvatar(
                              image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                              size: XelaUserAvatarSize.LARGE,
                              style: XelaUserAvatarStyle.CIRCLE,
                            ),
                            XelaUserAvatar(
                              image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                              size: XelaUserAvatarSize.LARGE,
                              style: XelaUserAvatarStyle.RECTANGLE,
                              decoration: XelaUserAvatarDecoration.PLUS,
                              plusIcon: Icon(Icons.add, color: Colors.white,),
                              decorationBackground: XelaColor.Blue3,
                              decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            ),
                            XelaUserAvatar(
                              image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                              size: XelaUserAvatarSize.LARGE,
                              style: XelaUserAvatarStyle.CIRCLE,
                              decoration: XelaUserAvatarDecoration.PLUS,
                              plusIcon: Icon(Icons.add, color: Colors.white,),
                              decorationBackground: XelaColor.Blue3,
                              decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        ),
                      ),

                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                        Row(
                          children: [
                            XelaUserAvatar(
                              image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                              size: XelaUserAvatarSize.MEDIUM,
                            ),
                            XelaUserAvatar(
                              image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                              size: XelaUserAvatarSize.MEDIUM,
                              style: XelaUserAvatarStyle.CIRCLE,
                            ),
                            XelaUserAvatar(
                              image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                              size: XelaUserAvatarSize.MEDIUM,
                              style: XelaUserAvatarStyle.RECTANGLE,
                              decoration: XelaUserAvatarDecoration.PLUS,
                              plusIcon: Icon(Icons.add, color: Colors.white,),
                              decorationBackground: XelaColor.Blue3,
                              decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            ),
                            XelaUserAvatar(
                              image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                              size: XelaUserAvatarSize.MEDIUM,
                              style: XelaUserAvatarStyle.CIRCLE,
                              decoration: XelaUserAvatarDecoration.PLUS,
                              plusIcon: Icon(Icons.add, color: Colors.white,),
                              decorationBackground: XelaColor.Blue3,
                              decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.SMALL,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.PLUS,
                            plusIcon: Icon(Icons.add, color: Colors.white,),
                            decorationBackground: XelaColor.Blue3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.PLUS,
                            plusIcon: Icon(Icons.add, color: Colors.white,),
                            decorationBackground: XelaColor.Blue3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),

                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),

                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            image: Image.asset("assets/images/user_avatar.png", fit: BoxFit.fill,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Icon", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.LARGE,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.PLUS,
                            plusIcon: Icon(Icons.add, color: Colors.white,),
                            decorationBackground: XelaColor.Blue3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.PLUS,
                            plusIcon: Icon(Icons.add, color: Colors.white,),
                            decorationBackground: XelaColor.Blue3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),

                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.MEDIUM,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.PLUS,
                            plusIcon: Icon(Icons.add, color: Colors.white,),
                            decorationBackground: XelaColor.Blue3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.PLUS,
                            plusIcon: Icon(Icons.add, color: Colors.white,),
                            decorationBackground: XelaColor.Blue3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.SMALL,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.PLUS,
                            plusIcon: Icon(Icons.add, color: Colors.white,),
                            decorationBackground: XelaColor.Blue3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.PLUS,
                            plusIcon: Icon(Icons.add, color: Colors.white,),
                            decorationBackground: XelaColor.Blue3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),

                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),

                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            icon: Icon(Icons.account_circle, color: Colors.white,),
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text("Initials", style: XelaTextStyle.XelaCaption.apply(color: _isDark ? XelaColor.Gray6 : XelaColor.Gray4),),
                        ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), child: XelaDivider(color: _isDark ? XelaColor.Gray3 : XelaColor.Gray11,),),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.LARGE,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.PLUS,
                            plusIcon: Icon(Icons.add, color: Colors.white,),
                            decorationBackground: XelaColor.Blue3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.PLUS,
                            plusIcon: Icon(Icons.add, color: Colors.white,),
                            decorationBackground: XelaColor.Blue3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),

                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.MEDIUM,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.PLUS,
                            plusIcon: Icon(Icons.add, color: Colors.white,),
                            decorationBackground: XelaColor.Blue3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.PLUS,
                            plusIcon: Icon(Icons.add, color: Colors.white,),
                            decorationBackground: XelaColor.Blue3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.SMALL,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.PLUS,
                            plusIcon: Icon(Icons.add, color: Colors.white,),
                            decorationBackground: XelaColor.Blue3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.PLUS,
                            plusIcon: Icon(Icons.add, color: Colors.white,),
                            decorationBackground: XelaColor.Blue3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),

                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.COUNTER,
                            count: 2,
                            decorationBackground: XelaColor.Red3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.LARGE,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),

                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.MEDIUM,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      ),
                      Container(padding: const EdgeInsets.symmetric(vertical: 4), child:
                      Row(
                        children: [
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                            decorationPosition: XelaUserAvatarDecorationPosition.TOPRIGHT,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.RECTANGLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                          XelaUserAvatar(
                            initials: "AB",
                            background: XelaColor.Orange9,
                            foreground: XelaColor.Orange3,
                            size: XelaUserAvatarSize.SMALL,
                            style: XelaUserAvatarStyle.CIRCLE,
                            decoration: XelaUserAvatarDecoration.INDICATOR,
                            decorationBackground: XelaColor.Green3,
                            decorationBorderColor: _isDark ? XelaColor.Gray1 : Colors.white,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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