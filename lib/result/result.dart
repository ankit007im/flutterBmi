// import 'package:bmi_calculator/app_bar.dart';
// import 'package:bmi_calculator/input/input_page_style.dart';
// import 'package:bmi_calculator/widgets_util.dart';
// import 'package:flutter/material.dart';
// import 'package:bmi_calculator/input_pages.dart';
// import 'package:bmi_calculator/result/calculate.dart' as calculator;
// import 'package:bmi_calculator/main.dart';

// class ResultPage extends StatefulWidget {
//   final int height;
//   final int weight;
//   final Gender gender;

//  const ResultPage({Key key,this.gender,this.height,this.weight})
//  :super(key:key);

//   @override
//   _ResultPageState createState() => _ResultPageState();
// }

// class _ResultPageState extends State<ResultPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         child: BmiAppBar(isInputPage :false),
//         preferredSize: Size.fromHeight(appBarHeight(context)),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           bmi: calculator.calculateBMI(
//             height: widget.height,
//             weight: widget.weight
//           ),
//           minWeight:calculator.calculateMaxNormalWeight(height:widget.height),
//           maxWeight:calculator.calculateMaxNormalWeight(height:widget.height),
//           _buildBottomBar(),
//         ],
//       ),
//     );
//   }
//   Widget _buildBottomBar(){
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 30.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(right: 40.0),
//             child: IconButton(
//               icon:Icon(
//                 Icons.delete,
//                 color: Colors.red,
//                 size: 28.0,
//               ),
//               onPressed: () => Navigator.of(context).pop,
//             ),
//           ),
//           Container(
//             height: 52.0,
//             width: 80.0,
//             child: RaisedButton(
//               child: Icon(
//                 Icons.refresh,
//                 color: Colors.white,
//                 size:28.0,
//               ),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(6.0),
//               ),
//               onPressed: () => Navigator.of(context).pop(),
//               color: Theme.of(context).primaryColor,
//               splashColor: Colors.green,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 40.0),
//             child: IconButton(
//               icon: Icon(
//                 Icons.share,
//                 color: Colors.grey,
//                 size: 28.0,
//               ),
//               onPressed: (){},
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class ResultCard extends StatelessWidget {
//   final double bmi;
//   final double minWeight;
//   final double maxWeight;

//   const ResultCard({this.bmi,this.maxWeight,this.minWeight,Key key})
//   :super(key:key);
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(16.0),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 24.0),
//         child: Column(
//           children: <Widget>[
//             Text(
//               "🔥",
//               style: TextStyle(fontSize: 80.0),
//             ),
//             Text(
//               bmi.toStringAsFixed(1),
//               style:TextStyle(fontSize:140.0,fontWeight:FontWeight.bold),
//             ),
//             Text(
//               'BMI =${bmi.toStringAsFixed(2)} kg/m²',
//               style: TextStyle(fontSize: ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }