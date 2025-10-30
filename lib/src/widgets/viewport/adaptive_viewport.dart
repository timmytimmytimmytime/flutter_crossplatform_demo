import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'dart:math' as math;

class AdaptiveViewport extends StatelessWidget {
  final Widget child;
  const AdaptiveViewport({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) return child; // no changes off-web

    return LayoutBuilder(
      builder: (context, constraints) {
        const targetW = 390.0;
        const targetH = 844.0;

        final boxW = constraints.maxWidth > targetW * 1.2
            ? targetW
            : constraints.maxWidth;
        final boxH = math.min(constraints.maxHeight, targetH);

        return Container(
          color: Colors.black, // outside / letterbox area
          alignment: Alignment
              .topCenter, // or Alignment.center if you want vertical centering
          child: SizedBox(
            width: boxW,
            height:
                boxH, // cap height so black shows below if browser is taller
            child: child, // your app (purple Scaffold) renders inside here
          ),
        );
      },
    );
  }
}
