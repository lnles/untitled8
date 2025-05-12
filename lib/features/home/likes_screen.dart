import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dynamic_background/domain/enums/scroll_direction.dart';
import 'package:dynamic_background/domain/enums/scroller_shape.dart';
import 'package:dynamic_background/domain/models/painter_data/scroller_painter_data.dart';
import 'package:dynamic_background/widgets/views/dynamic_bg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class LikesScreen extends HookWidget {
  const LikesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final double buttonWidth = 500.0;
    final double buttonHeight = 65.0;
    final BorderRadius buttonRadius = BorderRadius.circular(5.0);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Likes Screen'),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      // backgroundColor: Colors.white.withOpacity(0.9),
      body: ClipRRect(
        borderRadius: buttonRadius,
        child: DynamicBg(
          width: buttonWidth,
          height: buttonHeight,
          /*painterData: LavaPainterData(
            width: 250.0,
            widthTolerance: 75.0,
            growAndShrink: true,
            growthRate: 10.0,
            growthRateTolerance: 5.0,
            blurLevel: 25.0,
            numBlobs: 5,
            backgroundColor: ColorSchemes.gentleWhiteBg,
            colors: [
              ColorSchemes.vibrantOrangeBg,
              ColorSchemes.vibrantOrangeFg,
              ColorSchemes.vibrantYellowBg,
              ColorSchemes.vibrantYellowFg,
            ],
            allSameColor: false,
            fadeBetweenColors: true,
            changeColorsTogether: false,
            speed: 20.0,
            speedTolerance: 5.0,
          ),*/
          /*painterData: WavePainterData(
            waves: [
              Wave(
                direction: WaveDirection.left2Right,
                amplitude: 50.0,
                offset: 0.5,
                color: Colors.transparent,
                lineColor: ColorSchemes.gentleBlueBg,
                lineThickness: 3.0,
              ),
            ],
          ),*/
          painterData: ScrollerPainterData(
            direction: ScrollDirection.right2Left,
            shape: ScrollerShape.stripesDiagonalForward,
            backgroundColor: Color.fromARGB(255, 214, 232, 185),
            color: Color.fromARGB(255, 198, 225, 151),
            shapeWidth: 24.0,
            spaceBetweenShapes: 24.0,
            fadeEdges: false,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                log('Button pressed');
              },
              borderRadius: buttonRadius,
              child: Center(
                child: Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
