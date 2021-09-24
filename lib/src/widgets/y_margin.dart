import 'package:flutter/material.dart';

import 'package:neo_reusables/src/commons/size_config.dart';

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
