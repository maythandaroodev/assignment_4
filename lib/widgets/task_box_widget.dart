import 'package:flutter/material.dart';

import '../constants/Strings.dart';
import '../constants/colors.dart';
import '../constants/dimens.dart';

class TaskBoxWidget extends StatelessWidget {
  const TaskBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kSP10x),
      width: kTaskBoxWidth,
      height: kTaskBoxHeight,
      decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(kTaskBoxRadius)
      ),
      child: const ListTile(
        leading: CircleAvatar(
            backgroundColor: kPrimaryColor,
            child: Icon(Icons.speaker_notes_sharp)),
        title: Text(kProjectText),
        subtitle: Text(k2daysAgoText),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
