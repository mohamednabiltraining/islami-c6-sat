import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c6_sat/home/quran/verse_widget.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'Sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/images/light_background.png'),
      )),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: FutureBuilder<List<String>>(
            future: readFile('${args.index + 1}.txt'),
            builder: (buildContext, snapshot) {
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              var verses = snapshot.data;
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 48),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: ListView.separated(
                  itemBuilder: (_, index) {
                    return VerseWidget(index, verses![index]);
                  },
                  itemCount: verses?.length ?? 0,
                  separatorBuilder: (_, __) {
                    return Container(
                      height: 2,
                      width: double.infinity,
                      color: Theme.of(context).primaryColor,
                      margin: EdgeInsets.symmetric(horizontal: 64),
                    );
                  },
                ),
              );
            },
          )),
    );
  }

  Future<List<String>> readFile(String fileName) async {
    String content = await rootBundle.loadString('assets/files/$fileName');
    List<String> lines = content.trim().split("\r\n");
    return lines;
  }
}

class SuraDetailsArgs {
  int index;
  String title;

  SuraDetailsArgs(this.index, this.title);
}
