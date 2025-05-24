import 'package:flutter/cupertino.dart';

class SemiCircleTabIndicator extends Decoration {
  final Color color;
  final double radius;

  const SemiCircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _SemiCirclePainter(color: color, radius: radius);
  }
}

class _SemiCirclePainter extends BoxPainter {
  final Color color;
  final double radius;

  _SemiCirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Paint paint = Paint()
      ..color = color
      ..isAntiAlias = true;

    final Offset circleOffset = Offset(
        offset.dx + cfg.size!.width / 2,
        offset.dy
    );

    final Rect rect = Rect.fromCircle(center: circleOffset, radius: radius);
    final Path path = Path()..addArc(rect, 3.14, -3.14);
    canvas.drawPath(path, paint);
  }
}
