import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:interactive_bar/core/hooks/precache_image.dart';

import 'package:interactive_bar/data/models/beer.dart';
import '../../../../core/color_manipulation.dart';

class BeerExpansionTile extends HookWidget {
  final bool isExpanded;
  final double height;
  final Beer beer;
  final VoidCallback onTap;

  BeerExpansionTile({
    Key? key,
    required this.isExpanded,
    required this.beer,
    required this.onTap,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int animationMS = 300;
    final Duration _expansionDuration = Duration(milliseconds: animationMS);

    usePrecacheImage(provider: Image.network(beer.icon).image);

    final controller = useAnimationController(
      duration: Duration(milliseconds: animationMS + 200),
    );

    final titleMoveAnimatonValue = useAnimation<double>(
      Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(0.0, 0.7, curve: Curves.easeIn),
        ),
      ),
    );

    final opacityAnimationValue = useAnimation<double>(
      Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(0.7, 1.0, curve: Curves.easeOut),
        ),
      ),
    );

    useEffect(() {
      controller.forward();
    }, []);

    final tileColor = Color(
      int.parse('0xFF${beer.colorHex}'),
    );

    return GestureDetector(
      onTap: () {
        if (!isExpanded) {
          controller.reset();
          controller.forward();
        }
        onTap();
      },
      child: Stack(
        children: [
          AnimatedContainer(
            duration: _expansionDuration,
            height: height,
            decoration: BoxDecoration(
              color: tileColor,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: isExpanded ? 25 : 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      if (isExpanded)
                        AnimatedBuilder(
                          animation: controller,
                          builder: (context, child) {
                            return Opacity(
                              opacity: opacityAnimationValue,
                              child: Image.network(
                                beer.icon,
                                height: height * 0.5,
                              ),
                            );
                          },
                        ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AnimatedBuilder(
                              animation: controller,
                              builder: (context, child) {
                                return Transform.translate(
                                  offset: isExpanded
                                      ? Offset(
                                          -40 * (1.0 - titleMoveAnimatonValue),
                                          0.0,
                                        )
                                      : Offset.zero,
                                  child: Text(
                                    beer.brandName,
                                    style: TextStyle(
                                        fontSize: 35,
                                        color: tileColor.darken(0.2)),
                                  ),
                                );
                              },
                            ),
                            if (isExpanded)
                              AnimatedBuilder(
                                animation: controller,
                                builder: (context, child) {
                                  return Opacity(
                                    opacity: opacityAnimationValue,
                                    child: Text(
                                      beer.style,
                                      style: TextStyle(
                                        color: tileColor.darken(0.2),
                                        fontSize: 20,
                                      ),
                                    ),
                                  );
                                },
                              )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '${beer.alcoholPercentages}%',
                    style: TextStyle(
                      color: tileColor.lighten(0.2),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedContainer(
            duration: _expansionDuration,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.05, 0.95, 1.0],
                colors: [
                  Colors.black12,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.withOpacity(0.05),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class BeerExpansionTile extends StatefulWidget {
//   final bool isExpanded;
//   final double height;
//   final Beer beer;
//   final VoidCallback onTap;

//   BeerExpansionTile({
//     Key? key,
//     required this.isExpanded,
//     required this.beer,
//     required this.onTap,
//     required this.height,
//   }) : super(key: key);

//   @override
//   _BeerExpansionTileState createState() => _BeerExpansionTileState();
// }

// class _BeerExpansionTileState extends State<BeerExpansionTile>
//     with TickerProviderStateMixin {
//   late AnimationController controller;
//   late Animation<double> titleMoveAnimation;
//   late Animation<double> opacityAnimation;
//   late Duration _expansionDuration = Duration(milliseconds: animationMS);
//   final int animationMS = 300;

//   @override
//   void initState() {
//     super.initState();
//     _expansionDuration = Duration(milliseconds: animationMS);
//     controller = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: animationMS + 200),
//     );
//     titleMoveAnimation = Tween(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(
//         parent: controller,
//         curve: Interval(0.0, 0.7, curve: Curves.easeIn),
//       ),
//     );
//     opacityAnimation = Tween(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(
//         parent: controller,
//         curve: Interval(0.7, 1.0, curve: Curves.easeOut),
//       ),
//     );
//     controller.forward();
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     precacheImage(Image.network(widget.beer.icon).image, context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final tileColor = Color(
//       int.parse('0xFF${widget.beer.colorHex}'),
//     );

//     return GestureDetector(
//       onTap: () {
//         if (!widget.isExpanded) {
//           controller.reset();
//           controller.forward();
//         }
//         widget.onTap();
//       },
//       child: Stack(
//         children: [
//           AnimatedContainer(
//             duration: _expansionDuration,
//             height: widget.height,
//             decoration: BoxDecoration(
//               color: tileColor,
//             ),
//             child: Padding(
//               padding:
//                   EdgeInsets.symmetric(horizontal: widget.isExpanded ? 25 : 50),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       if (widget.isExpanded)
//                         AnimatedBuilder(
//                           animation: controller,
//                           builder: (context, child) {
//                             return Opacity(
//                               opacity: opacityAnimation.value,
//                               child: Image.network(
//                                 widget.beer.icon,
//                                 height: widget.height * 0.5,
//                               ),
//                             );
//                           },
//                         ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 22.0),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             AnimatedBuilder(
//                               animation: controller,
//                               builder: (context, child) {
//                                 return Transform.translate(
//                                   offset: widget.isExpanded
//                                       ? Offset(
//                                           -40 *
//                                               (1.0 - titleMoveAnimation.value),
//                                           0.0,
//                                         )
//                                       : Offset.zero,
//                                   child: Text(
//                                     widget.beer.brandName,
//                                     style: TextStyle(
//                                         fontSize: 35,
//                                         color: tileColor.darken(0.2)),
//                                   ),
//                                 );
//                               },
//                             ),
//                             if (widget.isExpanded)
//                               AnimatedBuilder(
//                                 animation: controller,
//                                 builder: (context, child) {
//                                   return Opacity(
//                                     opacity: opacityAnimation.value,
//                                     child: Text(
//                                       widget.beer.style,
//                                       style: TextStyle(
//                                         color: tileColor.darken(0.2),
//                                         fontSize: 20,
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   Text(
//                     '${widget.beer.alcoholPercentages}%',
//                     style: TextStyle(
//                       color: tileColor.lighten(0.2),
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           AnimatedContainer(
//             duration: _expansionDuration,
//             height: widget.height,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 stops: [0.0, 0.05, 0.95, 1.0],
//                 colors: [
//                   Colors.black12,
//                   Colors.transparent,
//                   Colors.transparent,
//                   Colors.black.withOpacity(0.05),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
