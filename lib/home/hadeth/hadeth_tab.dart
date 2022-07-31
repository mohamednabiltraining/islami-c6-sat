import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c6_sat/home/hadeth/hadeth_name_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> hadethList = [];

  @override
  Widget build(BuildContext context) {
    if (hadethList.isEmpty) readHadethFile();
    return Column(
      children: [
        Expanded(
          child: hadethList.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemBuilder: (_, index) {
                    return HadethTitleWidget(hadethList[index]);
                  },
                  itemCount: hadethList.length,
                  separatorBuilder: (_, index) {
                    return Container(
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      height: 2,
                      margin: EdgeInsets.symmetric(horizontal: 48),
                    );
                  }),
        )
      ],
    );
  }

  void readHadethFile() async {
    List<Hadeth> hadethDataList = [];
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    content = content.trim();
    List<String> ahadethContent = content.split("#");
    for (int i = 0; i < ahadethContent.length; i++) {
      String singleHadeth = ahadethContent[i].trim();
      List<String> lines = singleHadeth.split('\n');
      String title = lines[0];
      if (title.isEmpty) continue;
      lines.removeAt(0);
      String content = lines.join("\n");
      Hadeth h = Hadeth(title, content);
      hadethDataList.add(h);
      print(h.title);
      print('-----');
      print(h.content);
      print('+++++++++++++++++++++++++++++++');
    }
    hadethList = hadethDataList;
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth(this.title, this.content);
}
