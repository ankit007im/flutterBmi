import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets_util.dart';

export 'package:bmi_calculator/styles.dart';

double marginBottomAdapted(BuildContext context) => screenAwareSize(marginBottom, context);
double marginTopAdapted(BuildContext context) => screenAwareSize(marginTop, context);
double circleSizeAdapter(BuildContext context) => screenAwareSize(circleSize, context);

const TextStyle lableTextStyle = const TextStyle(
  color: labelsGrey,
  fontSize: labelsFontSize,
);

const double circleSize = 32.0;
const double marginBottom = circleSize / 2;
const double marginTop = 26.0;
const double selectedLabelFontSize = 14.0;
const double labelsFontSize = 13.0;
const Color labelsGrey = const Color.fromRGBO(216, 217, 223, 1.0);