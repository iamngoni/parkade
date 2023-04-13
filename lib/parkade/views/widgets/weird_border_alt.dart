//
//  weird_border_alt
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

//
//  weird_border
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';

class WeirdBorderAlt extends ShapeBorder {
  const WeirdBorderAlt({required this.radius, this.pathWidth = 1});
  final double radius;
  final double pathWidth;

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..fillType = PathFillType.evenOdd
      ..addPath(getOuterPath(rect, textDirection: textDirection), Offset.zero);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) =>
      _createPath(rect);

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    // paint whole container white except area outside of borders which should be black
    canvas.drawPath(
      Path.combine(
        PathOperation.difference,
        Path()..addRect(rect),
        _createPath(rect),
      ),
      Paint()..color = Colors.white,
    );
  }

  @override
  ShapeBorder scale(double t) => WeirdBorderAlt(radius: radius);

  Path _createPath(Rect rect) {
    final innerRadius = radius + pathWidth;
    final innerRect = Rect.fromLTRB(
      rect.left + pathWidth,
      rect.top + pathWidth,
      rect.right - pathWidth,
      rect.bottom - pathWidth,
    );

    final outer = Path.combine(
      PathOperation.difference,
      Path()..addRect(rect),
      _createBevels(rect, radius),
    );
    final inner = Path.combine(
      PathOperation.difference,
      Path()..addRect(innerRect),
      _createBevels(rect, innerRadius),
    );
    return Path.combine(PathOperation.difference, outer, inner);
  }

  Path _createBevels(Rect rect, double radius) {
    return Path()
      ..addOval(
        Rect.fromCircle(
          center: Offset(rect.left, rect.top + rect.height),
          radius: radius,
        ),
      )
      ..addOval(
        Rect.fromCircle(
          center: Offset(rect.left + rect.width, rect.top + rect.height),
          radius: radius,
        ),
      );
  }
}
