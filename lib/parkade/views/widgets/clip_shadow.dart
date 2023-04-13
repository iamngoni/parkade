//
//  clip_shadow
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/widgets.dart';

class _ClipShadowPainter extends CustomPainter {
  const _ClipShadowPainter({
    required this.clipper,
    required this.boxShadow,
  });

  final CustomClipper<Path> clipper;
  final List<BoxShadow> boxShadow;

  @override
  void paint(Canvas canvas, Size size) {
    for (final shadow in boxShadow) {
      final spreadSize = Size(
        size.width + shadow.spreadRadius * 2,
        size.height + shadow.spreadRadius * 2,
      );
      final clipPath = clipper.getClip(spreadSize).shift(
            Offset(
              shadow.offset.dx - shadow.spreadRadius,
              shadow.offset.dy - shadow.spreadRadius,
            ),
          );
      final paint = shadow.toPaint();
      canvas.drawPath(clipPath, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class ClipShadow extends StatelessWidget {
  const ClipShadow({
    required this.boxShadow,
    required this.clipper,
    required this.child,
    super.key,
  });

  final List<BoxShadow> boxShadow;
  final CustomClipper<Path> clipper;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ClipShadowPainter(
        boxShadow: boxShadow,
        clipper: clipper,
      ),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
