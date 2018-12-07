import 'package:bmi_calculator/app_bar.dart';
import 'package:bmi_calculator/height/height_card.dart';
import 'package:bmi_calculator/input/input_summary_card.dart';
import 'package:bmi_calculator/input/pacman_slider.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'widgets_util.dart ' show screenAwareSize;
import 'package:bmi_calculator/gender_cards.dart';
import 'weight/weight_card.dart';
import 'package:bmi_calculator/input/input_page_style.dart';

class InputPage extends StatefulWidget {
  @override
  InputPageState createState() {
    return new InputPageState();
  }
}
class InputPageState extends State<InputPage>{

  Gender gender = Gender.others;
  int height = 170;
  int weight = 70;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: BmiAppBar(),
        preferredSize: Size.fromHeight(appBarHeight(context)),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // _buildTitle(context),
            InputSummaryCard(
              gender:gender,
              weight:weight,
              height:height,
            ),
            Expanded(child: _buildCards(context)),
            _buildBottom(context)
          ],
      ),
    );
  }
  // Widget _buildTitle(BuildContext context){
  //   return Padding(
  //     padding: EdgeInsets.only(
  //       left: 24.0,
  //       top: screenAwareSize(56.0, context)
  //     ),
  //     child: Text(
  //       "BMI Calculator",
  //       style:TextStyle(
  //         fontSize: 28.0, fontWeight: FontWeight.bold,
  //       )
  //     ),
  //   );
  // }

  Widget _buildCards(BuildContext context){
    return  Row(
        children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Expanded(child: GenderCard(
                gender: gender,
                onChanged: (val) => setState(() => gender=val)
              )),
              Expanded(child: WeightCard(
                weight : weight,
                onChanged : (val) => setState(() => weight = val),
              ))
            ],
          ),
        ),
        Expanded(child:HeightCard(
          height: height,
          onChanged: (val) => setState(() => height = val),
        )),
        ],
    );
  }

  // Widget _tempCard(String lable){
  //   return Card(
  //     child: Container(
  //       width: double.infinity,
  //       height: double.infinity,
  //       child: Text(lable),
  //     ),
  //   );
  // }

  Widget _buildBottom(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(
        left: screenAwareSize(16.0, context),
        top: screenAwareSize(14.0, context),
        right: screenAwareSize(16.0, context),
        bottom: screenAwareSize(22.0, context),
      ),
      child: PacmanSlider()
    );
  }
}

class CardTitle extends StatelessWidget {

  final String title;

  const CardTitle(this.title,{Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),
    );
  }
}