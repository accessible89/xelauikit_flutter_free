import 'package:flutter/material.dart';
import 'xela_color.dart';
import 'xela_text_style.dart';
import 'dart:math' as math;

class XelaSliderInput extends StatefulWidget {
  double value;
  final Function(double)? onChange;
  final double min;
  final double max;
  final bool vertical;
  final Color primaryColor;
  final Color secondaryColor;
  final bool disabled;
  final Color controlColor;
  final int? divisions;
  final bool showLabel;
  final Color valueIndicatorColor;
  final TextStyle valueIndicatorTextStyle;
  final Color valueIndicatorTextColor;

  XelaSliderInput({
    required this.value,
    this.onChange,
    this.min = 0,
    this.max = 100,
    this.vertical = false,
    this.primaryColor = XelaColor.Blue3,
    this.secondaryColor = XelaColor.Gray11,
    this.disabled = false,
    this.controlColor = Colors.white,
    this.divisions = 100,
    this.showLabel = true,
    this.valueIndicatorColor = XelaColor.Gray3,
    this.valueIndicatorTextStyle = XelaTextStyle.XelaCaption,
    this.valueIndicatorTextColor = Colors.white
  });

  @override
  _XelaSliderInputState createState() => _XelaSliderInputState();

}

class _XelaSliderInputState extends State<XelaSliderInput> {
  _XelaSliderInputState();

  double currentValue = 0;

  bool active = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      currentValue = widget.value;
    });
  }

  @override
  void dispose() {
    // Clean up the focus nodes
    // when the form is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {



    return RotatedBox(
        quarterTurns: widget.vertical ? 3 : 0,
        child: Opacity(
          opacity: widget.disabled ? 0.5 : 1,
          child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  activeTrackColor: widget.primaryColor,
                  inactiveTrackColor: widget.secondaryColor,
                  trackShape: XelaSliderTrackShape(active: active),
                  trackHeight: 4,
                  overlayShape: const RoundSliderOverlayShape(overlayRadius: 1),
                  overlayColor: widget.primaryColor,
                  thumbShape: XelaSliderThumbShape(thumbRadius: 28, active: active),
                  thumbColor: widget.controlColor,
                  activeTickMarkColor: widget.primaryColor,
                  inactiveTickMarkColor: widget.secondaryColor,
                  valueIndicatorColor: widget.valueIndicatorColor,
                  valueIndicatorTextStyle: widget.valueIndicatorTextStyle.apply(color: widget.valueIndicatorTextColor),
                  valueIndicatorShape: widget.vertical ? const XelaSliderValueIndicatorShape() : const RectangularSliderValueIndicatorShape()
              ),
              child: Slider(
                divisions: widget.divisions,
                value: currentValue,
                label: widget.showLabel ? currentValue.toInt().toString() : null,
                onChangeStart: (value){
                  if (widget.disabled) {
                    return;
                  }
                  setState(() {
                    active = true;
                  });
                },
                onChangeEnd: (value){
                  if (widget.disabled) {
                    return;
                  }
                  setState(() {
                    active = false;
                  });
                },
                onChanged: (value){
                  if (widget.disabled) {
                    return;
                  }
                  setState(() {
                    currentValue = value;
                  });

                  if(widget.onChange != null) {
                    widget.onChange!(currentValue);
                  }

                },
                max: widget.max,
                min: widget.min,
              )
          ),
        )
    );
  }
}

class XelaSliderTrackShape extends RoundedRectSliderTrackShape {
  XelaSliderTrackShape({required this.active});

  bool active;

  @override
  void paint(
      PaintingContext context,
      Offset offset, {
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required Animation<double> enableAnimation,
        required TextDirection textDirection,
        required Offset thumbCenter,
        bool isDiscrete = false,
        bool isEnabled = false,
        double additionalActiveTrackHeight = 4,
      }) {
    assert(sliderTheme.disabledActiveTrackColor != null);
    assert(sliderTheme.disabledInactiveTrackColor != null);
    assert(sliderTheme.activeTrackColor != null);
    assert(sliderTheme.inactiveTrackColor != null);
    assert(sliderTheme.thumbShape != null);
    // If the slider [SliderThemeData.trackHeight] is less than or equal to 0,
    // then it makes no difference whether the track is painted or not,
    // therefore the painting  can be a no-op.
    if (sliderTheme.trackHeight == null || sliderTheme.trackHeight! <= 0) {
      return;
    }

    // Assign the track segment paints, which are leading: active and
    // trailing: inactive.
    final ColorTween activeTrackColorTween = ColorTween(begin: sliderTheme.disabledActiveTrackColor, end: sliderTheme.activeTrackColor);
    final ColorTween inactiveTrackColorTween = ColorTween(begin: sliderTheme.disabledInactiveTrackColor, end: sliderTheme.inactiveTrackColor);
    final Paint activePaint = Paint()..color = activeTrackColorTween.evaluate(enableAnimation)!;
    final Paint inactivePaint = Paint()..color = inactiveTrackColorTween.evaluate(enableAnimation)!;
    final Paint leftTrackPaint;
    final Paint rightTrackPaint;
    switch (textDirection) {
      case TextDirection.ltr:
        leftTrackPaint = activePaint;
        rightTrackPaint = inactivePaint;
        break;
      case TextDirection.rtl:
        leftTrackPaint = inactivePaint;
        rightTrackPaint = activePaint;
        break;
    }

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );
    final Radius trackRadius = Radius.circular(trackRect.height / 2);
    final Radius activeTrackRadius = Radius.circular((trackRect.height + (active ? additionalActiveTrackHeight : 0)) / 2);

    context.canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        trackRect.left,
        (textDirection == TextDirection.ltr) ? trackRect.top - ((active ? additionalActiveTrackHeight : 0) / 2): trackRect.top,
        thumbCenter.dx,
        (textDirection == TextDirection.ltr) ? trackRect.bottom + ((active ? additionalActiveTrackHeight : 0) / 2) : trackRect.bottom,
        topLeft: (textDirection == TextDirection.ltr) ? activeTrackRadius : trackRadius,
        bottomLeft: (textDirection == TextDirection.ltr) ? activeTrackRadius: trackRadius,
      ),
      leftTrackPaint,
    );
    context.canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        thumbCenter.dx,
        (textDirection == TextDirection.rtl) ? trackRect.top - ((active ? additionalActiveTrackHeight : 0) / 2) : trackRect.top,
        trackRect.right,
        (textDirection == TextDirection.rtl) ? trackRect.bottom + ((active ? additionalActiveTrackHeight : 0) / 2) : trackRect.bottom,
        topRight: (textDirection == TextDirection.rtl) ? activeTrackRadius : trackRadius,
        bottomRight: (textDirection == TextDirection.rtl) ? activeTrackRadius : trackRadius,
      ),
      rightTrackPaint,
    );
  }
}

class XelaSliderThumbShape extends SliderComponentShape {
  final double thumbRadius;
  bool active;

  XelaSliderThumbShape({
    required this.thumbRadius,
    required this.active
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(PaintingContext context, Offset center, {required Animation<double> activationAnimation, required Animation<double> enableAnimation, required bool isDiscrete, required TextPainter labelPainter, required RenderBox parentBox, required SliderThemeData sliderTheme, required TextDirection textDirection, required double value, required double textScaleFactor, required Size sizeWithOverflow}) {

    final Canvas canvas = context.canvas;

    final fillPaint = Paint()
    ..color = sliderTheme.thumbColor != null ? sliderTheme.thumbColor! : Colors.white
    ..style = PaintingStyle.fill;

    final borderPaint = Paint()
    ..color = sliderTheme.activeTrackColor != null ? sliderTheme.activeTrackColor! : XelaColor.Blue3
    ..strokeWidth = 2
    ..style = PaintingStyle.stroke;

    final linePaint = Paint()
      ..color = sliderTheme.inactiveTrackColor != null ? sliderTheme.inactiveTrackColor! : XelaColor.Gray11
      ..style = PaintingStyle.fill;


    Rect fillRect = Rect.fromCenter(center: center, width: thumbRadius-2, height: thumbRadius-2);
    Rect borderRect = Rect.fromCenter(center: center, width: thumbRadius, height: thumbRadius);
    RRect fillRRect = RRect.fromRectAndCorners(fillRect,
        topRight: const Radius.circular(8), topLeft: const Radius.circular(8), bottomLeft: const Radius.circular(8), bottomRight: const Radius.circular(8));

    Rect shadowRect = Rect.fromCenter(center: center.translate(0, -4), width: thumbRadius-1, height: thumbRadius-1);
    RRect shadowRRect = RRect.fromRectAndCorners(shadowRect,
        topRight: const Radius.circular(8), topLeft: const Radius.circular(8), bottomLeft: const Radius.circular(8), bottomRight: const Radius.circular(8));

    canvas.drawShadow(Path()..addRRect(shadowRRect), XelaColor.Gray.withOpacity(0.25), 8, false);


    canvas.drawRRect(
        fillRRect,
        fillPaint);

    Rect lineRectMid = Rect.fromCenter(center: center, width: 1, height: thumbRadius-2-10);
    RRect lineRRectMid = RRect.fromRectAndCorners(lineRectMid,
        topRight: const Radius.circular(2), topLeft: const Radius.circular(2), bottomLeft: const Radius.circular(2), bottomRight: const Radius.circular(2));

    Rect lineRectLeft = Rect.fromCenter(center: center.translate(-4.5, 0), width: 1, height: thumbRadius-2-10);
    RRect lineRRectLeft = RRect.fromRectAndCorners(lineRectLeft,
        topRight: const Radius.circular(2), topLeft: const Radius.circular(2), bottomLeft: const Radius.circular(2), bottomRight: const Radius.circular(2));

    Rect lineRectRight = Rect.fromCenter(center: center.translate(4.5, 0), width: 1, height: thumbRadius-2-10);
    RRect lineRRectRight = RRect.fromRectAndCorners(lineRectRight,
        topRight: const Radius.circular(2), topLeft: const Radius.circular(2), bottomLeft: const Radius.circular(2), bottomRight: const Radius.circular(2));

    canvas.drawRRect(lineRRectMid, linePaint);
    canvas.drawRRect(lineRRectLeft, linePaint);
    canvas.drawRRect(lineRRectRight, linePaint);

    if (active) {
      canvas.drawRRect(
          RRect.fromRectAndCorners(borderRect,
              topRight: const Radius.circular(8), topLeft: const Radius.circular(8), bottomLeft: const Radius.circular(8), bottomRight: const Radius.circular(8)),
          borderPaint);
    }
  }
}


class XelaSliderValueIndicatorShape extends SliderComponentShape {
  /// Create a slider value indicator that resembles a rectangular tooltip.
  const XelaSliderValueIndicatorShape();

  static const _XelaSliderValueShapePathPainter _pathPainter = _XelaSliderValueShapePathPainter();

  @override
  Size getPreferredSize(
      bool isEnabled,
      bool isDiscrete, {
        TextPainter? labelPainter,
        double? textScaleFactor,
      }) {
    assert(labelPainter != null);
    assert(textScaleFactor != null && textScaleFactor >= 0);
    return _pathPainter.getPreferredSize(labelPainter!, textScaleFactor!);
  }

  @override
  void paint(
      PaintingContext context,
      Offset center, {
        required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow,
      }) {
    final Canvas canvas = context.canvas;
    final double scale = activationAnimation.value;
    _pathPainter.paint(
      parentBox: parentBox,
      canvas: canvas,
      center: center,
      scale: scale,
      labelPainter: labelPainter,
      textScaleFactor: textScaleFactor,
      sizeWithOverflow: sizeWithOverflow,
      backgroundPaintColor: sliderTheme.valueIndicatorColor!,
    );
  }
}

class _XelaSliderValueShapePathPainter {
  const _XelaSliderValueShapePathPainter();

  static const double _triangleHeight = 8.0;
  static const double _labelPadding = 16.0;
  static const double _preferredHeight = 32.0;
  static const double _minLabelWidth = 16.0;
  static const double _bottomTipYOffset = 14.0;
  static const double _preferredHalfHeight = _preferredHeight / 2;
  static const double _upperRectRadius = 4;

  Size getPreferredSize(
      TextPainter labelPainter,
      double textScaleFactor,
      ) {
    return Size(
      _upperRectangleWidth(labelPainter, 1, textScaleFactor),
      labelPainter.height + _labelPadding,
    );
  }

  double getHorizontalShift({
    required RenderBox parentBox,
    required Offset center,
    required TextPainter labelPainter,
    required double textScaleFactor,
    required Size sizeWithOverflow,
    required double scale,
  }) {
    assert(!sizeWithOverflow.isEmpty);

    const double edgePadding = 8.0;
    final double rectangleWidth = _upperRectangleWidth(labelPainter, scale, textScaleFactor);
    /// Value indicator draws on the Overlay and by using the global Offset
    /// we are making sure we use the bounds of the Overlay instead of the Slider.
    final Offset globalCenter = parentBox.localToGlobal(center);

    // The rectangle must be shifted towards the center so that it minimizes the
    // chance of it rendering outside the bounds of the render box. If the shift
    // is negative, then the lobe is shifted from right to left, and if it is
    // positive, then the lobe is shifted from left to right.
    final double overflowLeft = math.max(0, rectangleWidth / 2 - globalCenter.dx + edgePadding);
    final double overflowRight = math.max(0, rectangleWidth / 2 - (sizeWithOverflow.width - globalCenter.dx - edgePadding));

    if (rectangleWidth < sizeWithOverflow.width) {
      return overflowLeft - overflowRight;
    } else if (overflowLeft - overflowRight > 0) {
      return overflowLeft - (edgePadding * textScaleFactor);
    } else {
      return -overflowRight + (edgePadding * textScaleFactor);
    }
  }

  double _upperRectangleWidth(TextPainter labelPainter, double scale, double textScaleFactor) {
    final double unscaledWidth = math.max(_minLabelWidth * textScaleFactor, labelPainter.width) + _labelPadding * 2;
    return unscaledWidth * scale;
  }

  void paint({
    required RenderBox parentBox,
    required Canvas canvas,
    required Offset center,
    required double scale,
    required TextPainter labelPainter,
    required double textScaleFactor,
    required Size sizeWithOverflow,
    required Color backgroundPaintColor,
    Color? strokePaintColor,
  }) {
    if (scale == 0.0) {
      // Zero scale essentially means "do not draw anything", so it's safe to just return.
      return;
    }
    assert(!sizeWithOverflow.isEmpty);

    final double rectangleWidth = _upperRectangleWidth(labelPainter, scale, textScaleFactor);
    final double horizontalShift = getHorizontalShift(
      parentBox: parentBox,
      center: center,
      labelPainter: labelPainter,
      textScaleFactor: textScaleFactor,
      sizeWithOverflow: sizeWithOverflow,
      scale: scale,
    );

    final double rectHeight = labelPainter.height + _labelPadding;
    final Rect upperRect = Rect.fromLTWH(
      -rectangleWidth / 2 + horizontalShift,
      -_triangleHeight - rectHeight,
      rectangleWidth,
      rectHeight,
    );

    final Path trianglePath = Path()
      ..lineTo(-_triangleHeight, -_triangleHeight)
      ..lineTo(_triangleHeight, -_triangleHeight)
      ..close();
    final Paint fillPaint = Paint()..color = backgroundPaintColor;
    final RRect upperRRect = RRect.fromRectAndRadius(upperRect, const Radius.circular(_upperRectRadius));
    trianglePath.addRRect(upperRRect);

    canvas.save();
    // Prepare the canvas for the base of the tooltip, which is relative to the
    // center of the thumb.
    canvas.translate(center.dx + _bottomTipYOffset, center.dy);
    canvas.rotate(90 * math.pi / 180);
    canvas.scale(scale, scale);
    if (strokePaintColor != null) {
      final Paint strokePaint = Paint()
        ..color = strokePaintColor
        ..strokeWidth = 1.0
        ..style = PaintingStyle.stroke;
      canvas.drawPath(trianglePath, strokePaint);
    }
    canvas.drawPath(trianglePath, fillPaint);

    // The label text is centered within the value indicator.
    final double bottomTipToUpperRectTranslateY = -_preferredHalfHeight / 2 - upperRect.height;
    canvas.translate(0, bottomTipToUpperRectTranslateY);
    final Offset boxCenter = Offset(horizontalShift, upperRect.height / 2);
    final Offset halfLabelPainterOffset = Offset(labelPainter.width / 2, labelPainter.height / 2);
    final Offset labelOffset = boxCenter - halfLabelPainterOffset;
    labelPainter.paint(canvas, labelOffset);
    canvas.restore();
  }
}