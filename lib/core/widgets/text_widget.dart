// ignore_for_file: unused_element
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dog_adoption/core/constants/app_constants.dart';
import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:dog_adoption/core/utils/enums/text_style/text_style_enum.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

part 'itext_widget.dart';

class MyTextWidget extends _MyBaseTextWidget {
  final _TextWidgetType _type;

  const MyTextWidget(
      {super.key,
      super.forceStrutHeight,
      required super.text,
      super.isMoneyCurrency,
      required super.widgetType,
      super.decoration,
      super.color,
      super.textAlign,
      super.overflow,
      super.onTap,
      super.maxLines})
      : _type = _TextWidgetType.normal;
  const MyTextWidget.text(
      {super.key,
      required super.text,
      super.isMoneyCurrency,
      required super.widgetType,
      super.decoration,
      super.color,
      super.textAlign,
      super.overflow,
      super.forceStrutHeight,
      super.onTap,
      super.maxLines})
      : _type = _TextWidgetType.normal;
  const MyTextWidget.autoSizeText(
      {super.key,
      required super.text,
      required super.widgetType,
      super.isMoneyCurrency,
      super.decoration,
      super.color,
      super.textAlign,
      super.overflow,
      super.onTap,
      super.maxLines,
      super.forceStrutHeight,
      super.maxFontSize,
      super.minFontSize})
      : _type = _TextWidgetType.autosize;
  const MyTextWidget.richText(
      {super.key,
      required super.text,
      required super.widgetType,
      super.decoration,
      super.color,
      super.textAlign,
      super.overflow,
      super.onTap,
      super.maxLines,
      super.forceStrutHeight,
      super.children})
      : _type = _TextWidgetType.rich;

  @override
  Widget build(BuildContext context) {
    switch (_type) {
      case _TextWidgetType.normal:
        return _TextWidget(
          text: text,
          widgetType: widgetType,
          decoration: decoration,
          color: color,
          textAlign: textAlign,
          isMoneyCurrency: isMoneyCurrency,
          overflow: overflow,
          onTap: onTap,
          maxLines: maxLines,
          forceStrutHeight: forceStrutHeight,
        );
      case _TextWidgetType.rich:
        return _RichTextWidget(
          text: text,
          widgetType: widgetType,
          decoration: decoration,
          color: color,
          textAlign: textAlign,
          overflow: overflow,
          onTap: onTap,
          maxLines: maxLines,
          children: children,
        );

      case _TextWidgetType.autosize:
        return _AutoSizeTextWidget(
          text: text,
          widgetType: widgetType,
          color: color,
          textAlign: textAlign,
          overflow: overflow,
          isMoneyCurrency: isMoneyCurrency,
          onTap: onTap,
          maxLines: maxLines,
          maxFontSize: maxFontSize,
          minFontSize: minFontSize,
          decoration: decoration,
        );
      default:
        return _TextWidget(
          text: text,
          widgetType: widgetType,
          decoration: decoration,
          isMoneyCurrency: isMoneyCurrency,
          color: color,
          textAlign: textAlign,
          overflow: overflow,
          onTap: onTap,
          maxLines: maxLines,
          forceStrutHeight: forceStrutHeight,
        );
    }
  }
}

class _TextWidget extends _MyTextWidget {
  const _TextWidget(
      {required super.text,
      required super.widgetType,
      super.isMoneyCurrency,
      super.decoration,
      super.color,
      super.textAlign,
      super.overflow,
      super.onTap,
      super.forceStrutHeight,
      super.maxLines});

  @override
  Widget build(BuildContext context) {
    final Widget child = Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      strutStyle: StrutStyle(
        forceStrutHeight: forceStrutHeight ?? false,
      ),
      style: TextStyle(
          fontFamily: ApplicationConstants.instance.fontFamily,
          color: color ?? context.textTheme.labelSmall?.color,
          decoration: decoration,
          fontSize: widgetType.size.toDouble(),
          fontWeight: widgetType.fontWeight),
    );

    if (onTap != null) {
      return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onTap,
        child: child,
      );
    } else {
      return child;
    }
  }
}

class _RichTextWidget extends _MyRichTextWidget {
  const _RichTextWidget(
      {required super.text,
      required super.widgetType,
      super.decoration,
      super.color,
      super.textAlign,
      super.overflow,
      super.onTap,
      super.children,
      super.maxLines})
      : super();

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: text,
        children: children ?? [],
        style: TextStyle(
            fontFamily: ApplicationConstants.instance.fontFamily,
            color: color ?? context.textTheme.labelSmall?.color,
            decoration: decoration,
            fontSize: widgetType.size.toDouble(),
            fontWeight: widgetType.fontWeight),
        recognizer:
            onTap != null ? (TapGestureRecognizer()..onTap = onTap) : null,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
          fontFamily: ApplicationConstants.instance.fontFamily,
          color: color ?? context.textTheme.labelSmall?.color,
          decoration: decoration,
          fontSize: widgetType.size.toDouble(),
          fontWeight: widgetType.fontWeight),
    );
  }
}

class _AutoSizeTextWidget extends _MyAutoSizeTextWidget {
  const _AutoSizeTextWidget(
      {required super.text,
      required super.widgetType,
      super.decoration,
      super.isMoneyCurrency,
      super.color,
      super.textAlign,
      super.overflow,
      super.onTap,
      super.maxLines,
      super.maxFontSize,
      super.minFontSize});

  @override
  Widget build(BuildContext context) {
    final Widget child = AutoSizeText(
      text,
      textAlign: textAlign,
      minFontSize: minFontSize?.toDouble() ?? 9,
      maxFontSize: maxFontSize?.toDouble() ?? 24,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
          fontFamily: ApplicationConstants.instance.fontFamily,
          color: color ?? context.textTheme.labelSmall?.color,
          decoration: decoration,
          fontSize: widgetType.size.toDouble(),
          fontWeight: widgetType.fontWeight),
    );

    if (onTap != null) {
      return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onTap,
        child: child,
      );
    } else {
      return child;
    }
  }
}

enum _TextWidgetType {
  normal,
  autosize,
  rich,
}
