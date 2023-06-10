import 'package:flutter/material.dart';

import '../../constants/Strings.dart';
import '../../constants/colors.dart';
import '../../constants/dimens.dart';
import '../../widgets/task_box_widget.dart';
import '../../widgets/text_box_widget.dart';

class DateItemView extends StatelessWidget {
  const DateItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kDateItemViewHeight,
      decoration: const BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(kDateItemViewBorderRadius),
              bottomRight: Radius.circular(kDateItemViewBorderRadius)) ),
      child: Stack(
        children: [

          const Positioned(
            top: kSP10x,
            left: kSP30x,
            child:Text(kApril3Text,
              style: TextStyle(
                  fontSize: kFS28x,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Positioned(
            right: kSP20x,
            child: ElevatedButton.icon(
              onPressed: (){},
              icon: const Wrap(
                  alignment: WrapAlignment.center,
                  children :[
                    Icon(Icons.add),
                    Padding(
                      padding: EdgeInsets.only(top: kSP2x),
                      child: Text(kAddTaskText,
                        style: TextStyle(
                            fontSize: kFS18x
                        ),
                      ),
                    )
                  ]),
              label: const Text(""),
              style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  padding: const EdgeInsets.all(kSP18x),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(kBtnRadius)
                  )
              ),
            ),
          ),
          const Positioned(
            top: kSP85x,
            child: Row(
              children: [
                SizedBox(width: kSP30x,),
                TextBoxWidget(dateNumber: '3', dateDay: 'SUN',isBackgroundColor: true,textColor: true,),
                TextBoxWidget(dateNumber: '4', dateDay: 'MON'),
                TextBoxWidget(dateNumber: '5', dateDay: 'TUE'),
                TextBoxWidget(dateNumber: '6', dateDay: 'WED'),
                TextBoxWidget(dateNumber: '7', dateDay: 'THU')
              ],
            ),
          )
        ],
      ),

    )
    ;
  }
}

class TaskItemView extends StatelessWidget {
  const TaskItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: kTaskContainerWidth,
      height: kTaskContainerHeight,
      child: Stack(
        children: [
          Positioned(
            top: kSP30x,
            left: kSP20x,
            child: Text(kTaskText,
              style: TextStyle(
                  fontSize: kFS24x,
                  fontWeight: FontWeight.bold
              ),),
          ),
          Positioned(
            top: kSP70x,
              left: kSP20x,
              child: TaskBoxWidget()
          ),
          Positioned(
              top: kSP150x,
              left: kSP20x,
              child: TaskBoxWidget()
          ),
          Positioned(
              top: kSP230x,
              left: kSP20x,
              child: TaskBoxWidget()
          ),
          Positioned(
              top: kSP310x,
              left: kSP20x,
              child: TaskBoxWidget()
          ),
        ],
      ),
    );
  }
}

