import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/src/bubble_type.dart';
import 'package:flutter_chat_bubble/src/clippers/chat_bubble_clipper_1.dart';
import 'package:flutter_chat_bubble/src/clippers/chat_bubble_clipper_2.dart';
import 'package:flutter_chat_bubble/src/clippers/chat_bubble_clipper_3.dart';
import 'package:flutter_chat_bubble/src/clippers/chat_bubble_clipper_4.dart';
import 'package:flutter_chat_bubble/src/clippers/chat_bubble_clipper_5.dart';
import 'package:flutter_chat_bubble/src/clippers/chat_bubble_clipper_6.dart';
import 'package:flutter_chat_bubble/src/clippers/chat_bubble_clipper_7.dart';
import 'package:flutter_chat_bubble/src/clippers/chat_bubble_clipper_8.dart';
import 'package:flutter_chat_bubble/src/clippers/chat_bubble_clipper_9.dart';
import 'package:flutter_chat_bubble/src/clippers/chat_bubble_clipper_10.dart';

class ChatBubble extends StatelessWidget {
  final CustomClipper<Path> clipper;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final double? elevation;
  final Color? backGroundColor;
  final Color? shadowColor;
  final Alignment? alignment;
  final LinearGradient? gradient;
  final EdgeInsetsGeometry? padding;

  ChatBubble({
    required this.clipper,
    this.child,
    this.margin,
    this.elevation,
    this.backGroundColor,
    this.shadowColor,
    this.alignment,
    this.gradient,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment ?? Alignment.topLeft,
      margin: margin ?? const EdgeInsets.all(0),
      child: PhysicalShape(
        clipper: clipper,
        elevation: elevation ?? 2,
        color: gradient == null
            ? (backGroundColor ?? Colors.blue)
            : Colors.transparent,
        shadowColor: shadowColor ?? Colors.grey.shade200,
        child: ClipPath(
          clipper: clipper,
          child: Container(
            decoration: BoxDecoration(
              gradient: gradient,
            ),
            padding: padding ?? setPadding(),
            child: child ?? Container(),
          ),
        ),
      ),
    );
  }

  EdgeInsets setPadding() {
    if (clipper is ChatBubbleClipper1) {
      if ((clipper as ChatBubbleClipper1).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20);
      } else {
        return EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10);
      }
    } else if (clipper is ChatBubbleClipper2) {
      if ((clipper as ChatBubbleClipper2).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 25);
      } else {
        return EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 10);
      }
    } else if (clipper is ChatBubbleClipper3) {
      if ((clipper as ChatBubbleClipper3).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20);
      } else {
        return EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10);
      }
    } else if (clipper is ChatBubbleClipper4) {
      if ((clipper as ChatBubbleClipper4).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20);
      } else {
        return EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10);
      }
    } else if (clipper is ChatBubbleClipper5) {
      if ((clipper as ChatBubbleClipper5).type == BubbleType.sendBubble) {
        return EdgeInsets.all(10);
      } else {
        return EdgeInsets.all(10);
      }
    } else if (clipper is ChatBubbleClipper6) {
      if ((clipper as ChatBubbleClipper6).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 20);
      } else {
        return EdgeInsets.only(top: 10, bottom: 20, left: 20, right: 10);
      }
    } else if (clipper is ChatBubbleClipper7) {
      if ((clipper as ChatBubbleClipper7).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15);
      } else {
        return EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15);
      }
    } else if (clipper is ChatBubbleClipper8) {
      if ((clipper as ChatBubbleClipper8).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 15);
      } else {
        return EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 10);
      }
    } else if (clipper is ChatBubbleClipper9) {
      if ((clipper as ChatBubbleClipper9).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 10, bottom: 15, left: 10, right: 15);
      } else {
        return EdgeInsets.only(top: 10, bottom: 15, left: 15, right: 10);
      }
    } else if (clipper is ChatBubbleClipper10) {
      if ((clipper as ChatBubbleClipper10).type == BubbleType.sendBubble) {
        return EdgeInsets.only(top: 15, bottom: 10, left: 10, right: 15);
      } else {
        return EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 10);
      }
    }

    return EdgeInsets.all(10);
  }
}
