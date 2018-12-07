import 'package:bmi_calculator/widgets_util.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/height/height_style.dart';

class HeightSlider extends StatelessWidget {
  final int height;
  const HeightSlider({Key key,this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SliderLable(height: height),
          Row(
            children: <Widget>[
            SliderCircle(),
              Expanded(child: SliderLine(),)
            ],
          )
        ],
      ),
    );
  }
}

class SliderLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: List.generate(
          40,
          (i) => Expanded(
                child: Container(
                  height: 2.0,
                  decoration: BoxDecoration(
                      color: i.isEven
                          ? Theme.of(context).primaryColor
                          : Colors.white),
                ),
              )),
       );
  }
}

class SliderCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: circleSizeAdapter(context),
      height: circleSizeAdapter(context),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.unfold_more,
        color: Colors.white,
        size : 0.6 * circleSizeAdapter(context),
      ),
    );
  }
}

class SliderLable extends StatelessWidget {
  final int height;
  const SliderLable({this.height,Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenAwareSize(4.0,context),
        bottom: screenAwareSize(2.0, context),
      ),
      child: Text(
        "$height",
        style: TextStyle(
          fontSize: selectedLabelFontSize,
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

