//
//  ticker_clipper
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/widgets.dart';

class TicketClipper extends CustomClipper<Path> {
  TicketClipper(this.innerRadius, this.outerRadius);

  final BorderRadius innerRadius;

  final BorderRadius outerRadius;

  @override
  Path getClip(Size size) {
    const C = 0.551915024494;
    final path = Path();

    var currentUseInner = false;
    var currentRadius = Radius.zero;

    currentUseInner = innerRadius.topLeft != Radius.zero;
    currentRadius = currentUseInner ? innerRadius.topLeft : outerRadius.topLeft;
    path
      ..moveTo(0, currentRadius.y)
      ..cubicTo(
        currentUseInner ? currentRadius.x * C : 0.0,
        currentUseInner ? currentRadius.y : currentRadius.y * (1 - C),
        currentUseInner ? currentRadius.x : currentRadius.x * (1 - C),
        currentUseInner ? currentRadius.y * C : 0.0,
        currentRadius.x,
        0,
      );

    currentUseInner = innerRadius.topRight != Radius.zero;
    currentRadius =
        currentUseInner ? innerRadius.topRight : outerRadius.topRight;
    path
      ..lineTo(size.width - currentRadius.x, 0)
      ..cubicTo(
        currentUseInner
            ? size.width - currentRadius.x
            : size.width - currentRadius.x * (1 - C),
        currentUseInner ? currentRadius.y * C : 0.0,
        currentUseInner ? size.width - currentRadius.x * C : size.width,
        currentUseInner ? currentRadius.y : currentRadius.y * (1 - C),
        size.width,
        currentRadius.y,
      );

    currentUseInner = innerRadius.bottomRight != Radius.zero;
    currentRadius =
        currentUseInner ? innerRadius.bottomRight : outerRadius.bottomRight;
    path
      ..lineTo(size.width, size.height - currentRadius.y)
      ..cubicTo(
        currentUseInner ? size.width - currentRadius.x * C : size.width,
        currentUseInner
            ? size.height - currentRadius.y
            : size.height - currentRadius.y * (1 - C),
        currentUseInner
            ? size.width - currentRadius.x
            : size.width - currentRadius.x * (1 - C),
        currentUseInner ? size.height - currentRadius.y * C : size.height,
        size.width - currentRadius.x,
        size.height,
      );

    currentUseInner = innerRadius.bottomLeft != Radius.zero;
    currentRadius =
        currentUseInner ? innerRadius.bottomLeft : outerRadius.bottomLeft;
    path
      ..lineTo(currentRadius.x, size.height)
      ..cubicTo(
        currentUseInner ? currentRadius.x : currentRadius.x * (1 - C),
        currentUseInner ? size.height - currentRadius.y * C : size.height,
        currentUseInner ? currentRadius.x * C : 0.0,
        currentUseInner
            ? size.height - currentRadius.y
            : size.height - currentRadius.y * (1 - C),
        0,
        size.height - currentRadius.y,
      );

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
