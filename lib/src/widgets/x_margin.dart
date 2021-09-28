import 'package:flutter/material.dart';

import 'package:neo_reusables/src/commons/size_config.dart';

///[XMargin] provides horizontal margins/spaces between UI elements in your code.
///It also uses the SizeConfig setup in your [main.dart] to configure the width passed in
///by you
class XMargin extends StatelessWidget {
  final double width;

  const XMargin({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig().sw(width).toDouble(),
    );
  }
}
