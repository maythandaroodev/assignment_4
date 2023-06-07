import 'package:assignment_4/constants/dimens.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../item_views/home_page_item_views/home_page_item_views.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kSecondaryColor,
        toolbarHeight: kSP70x,
        leading: const Icon(Icons.arrow_back,color: Colors.black,size: kIconSize),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right:kSP27x),
            child: Icon(Icons.search,color: Colors.black,size: kIconSize),
          )
        ],
      ),
      body: const Column(
        children: [
          DateItemView(),
          TaskItemView(),
        ],
      )
    );
  }
}
