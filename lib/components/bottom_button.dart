import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});
  final Function()? onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // onTap: () {
      // Navigator.pushNamed(context, '/results');
      //Shorter option because there are only two screens. we need to import second screen.
      // Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultsPage),),
      // },
      child: Container(
        child: Center(
          child: Text(buttonTitle, style: kLargeButtonTextStyle),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerheight,
      ),
    );
  }
}
