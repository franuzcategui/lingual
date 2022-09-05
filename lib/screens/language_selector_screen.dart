import 'package:flutter/material.dart';
import 'package:lingual/screens/language_list_screen.dart';
import 'package:lingual/models/language.dart';
import 'package:lingual/widgets/language_card.dart';
import 'package:lingual/models/language_data.dart';

class LanguageSelectorScreen extends StatefulWidget {
  @override
  State<LanguageSelectorScreen> createState() => _LanguageSelectorScreenState();
}

class _LanguageSelectorScreenState extends State<LanguageSelectorScreen> {
  List<Language> languageList = LanguageData().getLanguageList();
  List<int> languagesSelected = [0, 1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.deepPurpleAccent,
            child: Icon(Icons.mic),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => LanguageListScreen()));
            },
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Column(
                  children: languageCards(languageList[languagesSelected[0]],
                      languageList[languagesSelected[1]], context),
                ),
                FloatingActionButton(
                    heroTag: 'btn1',
                    backgroundColor: Colors.deepPurpleAccent,
                    child: Icon(Icons.autorenew_outlined),
                    onPressed: () {
                      setState(() {
                        languagesSelected =
                            List.from(languagesSelected.reversed);
                      });
                    }),
              ],
            ),
            Text('Best translator out there bitches'),
          ],
        ),
      ),
    );
  }
}

List<Widget> languageCards(Language from, Language to, BuildContext context) {
  return [
    LanguageCard(
      language: from,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => LanguageListScreen()));
      },
    ),
    LanguageCard(
      language: to,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => LanguageListScreen()));
      },
    ),
  ];
}
