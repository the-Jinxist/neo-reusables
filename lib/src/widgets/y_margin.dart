import 'package:flutter/material.dart';

import 'package:neo_reusables/src/commons/size_config.dart';

///[YMargin] provides vertical margins/spaces between UI elements in your code.
///It also uses the SizeConfig setup in your [main.dart] to configure the height passed in
///by you
class YMargin extends StatelessWidget {
  final double height;

  const YMargin({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig().sh(height).toDouble(),
    );
  }
}
