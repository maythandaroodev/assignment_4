import 'package:flutter/material.dart';

import '../constants/Strings.dart';
import '../constants/colors.dart';
import '../constants/dimens.dart';

class TextBoxWidget extends StatelessWidget {
  final String dateNumber;
  final String dateDay;
  final bool isBackgroundColor;
  final bool textColor;
  const TextBoxWidget({Key? key,this.isBackgroundColor=false, required this.dateNumber, required this.dateDay,this.textColor=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kTextBoxWidth,
      height: kTextBoxHeight,
      decoration: BoxDecoration(
        color: (isBackgroundColor) ? kPrimaryColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(kTextBoxRadius),
      ),
      child:  Column(
        children: [
          const SizedBox(height: kSP9x,),
          Text(kAPRText,
              style: TextStyle(
                color: (textColor) ? kSecondaryColor : kBlackColor,
                fontSize: kFS15x,
              )),
          const SizedBox(height: kSP8x,),
          Text(dateNumber,style: TextStyle(
            color: (textColor) ? kSecondaryColor : kBlackColor,
            fontSize: kFS20x,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: kSP5x,),
          Text(dateDay,style: TextStyle(
            color: (textColor) ? kSecondaryColor : kBlackColor,
            fontSize: kFS15x,
          ),)
        ],
      ),
    );
  }
}
