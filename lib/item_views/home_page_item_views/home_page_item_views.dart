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
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(kDateItemViewBorderRadius),bottomRight: Radius.circular(kDateItemViewBorderRadius))
      ),
      child: Column(
        children: [
          Container(
            height: kSP70x,
            color: kSecondaryColor,
            child: Row(
              children: [
                const SizedBox(width: kSP30x,),
                const Text(kApril3Text,
                  style: TextStyle(
                    fontSize: kFS28x,
                    fontWeight: FontWeight.bold
                  ),
                ),
               const SizedBox(width: kSP100x,),
               ElevatedButton.icon(
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
                 ]
               ),
            ),
          const Expanded(
              child: Row(
             children: [
               SizedBox(width: kSP30x,),
               TextBoxWidget(dateNumber: '3', dateDay: 'SUN',isBackgroundColor: true,textColor: true,),
               TextBoxWidget(dateNumber: '4', dateDay: 'MON'),
               TextBoxWidget(dateNumber: '5', dateDay: 'TUE'),
               TextBoxWidget(dateNumber: '6', dateDay: 'WED'),
               TextBoxWidget(dateNumber: '7', dateDay: 'THU')
            ],
          )
          )
        ],
      ),
    );
  }
}

class TaskItemView extends StatelessWidget {
  const TaskItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: kSP20x,right: kSP265x,bottom: kSP10x),
          child: Text(kTaskText,
            style: TextStyle(
                fontSize: kFS24x,
                fontWeight: FontWeight.bold
            ),),
        ),
        TaskBoxWidget(),
        TaskBoxWidget(),
        TaskBoxWidget(),
        TaskBoxWidget(),
      ],
    );
  }
}

