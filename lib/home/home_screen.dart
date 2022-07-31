import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c6_sat/home/hadeth/hadeth_tab.dart';
import 'package:islami_c6_sat/home/quran/quran_tab.dart';
import 'package:islami_c6_sat/home/radio/radio_tab.dart';
import 'package:islami_c6_sat/home/settings/settings_tab.dart';
import 'package:islami_c6_sat/home/tasbeh/tasbeh_tab.dart';
import 'package:islami_c6_sat/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(settingsProvider.getMainBackGround()),
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).backgroundColor,
                icon: ImageIcon(
                  AssetImage('assets/images/ic_quran.png'),
                ),
                label: (AppLocalizations.of(context)?.app_title)),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).backgroundColor,
                icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                label: AppLocalizations.of(context)!.hadeth_title ?? ""),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).backgroundColor,
                icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                label: AppLocalizations.of(context)!.tasbeh_title ?? ""),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).backgroundColor,
                icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                label: AppLocalizations.of(context)!.radio_title ?? ""),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).backgroundColor,
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings_title ?? ""),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab()
  ];
}
