import 'package:flutter/material.dart';
import 'package:islami_c6_sat/home/hadeth/hadeth_details.dart';
import 'package:islami_c6_sat/home/hadeth/hadeth_tab.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Text(
            hadeth.title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          )),
    );
  }
}
