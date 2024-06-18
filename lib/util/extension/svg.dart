import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:rummi_assistant/util/assets/assets.gen.dart';

extension ColoredIconExtension on SvgGenImage {
  SvgPicture coloredSvg(Color color, {double? width, double? height}) => this.svg(
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        width: width,
        height: height,
      );
}
