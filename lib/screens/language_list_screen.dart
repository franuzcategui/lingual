import 'package:flutter/material.dart';
import 'package:lingual/models/language.dart';
import 'package:lingual/widgets/language_card.dart';
import 'package:lingual/models/language_data.dart';

class LanguageListScreen extends StatefulWidget {
  @override
  State<LanguageListScreen> createState() => _LanguageListScreenState();
}

class _LanguageListScreenState extends State<LanguageListScreen> {
  final List<Language> languageList = LanguageData().getLanguageList();

  final TextEditingController controller = TextEditingController();

  final List<Language> filteredLanguageList = [];

  void _runFilter(String text) {
    filteredLanguageList.clear();
    for (int i = 0; i < languageList.length; i++) {
      if (languageList[i].name.toLowerCase().contains(text)) {
        filteredLanguageList.add(languageList[i]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          elevation: 0,
          leading: RawMaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.purple,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: TextField(
                  onChanged: (text) {
                    setState(() {
                      print(text);
                      _runFilter(text);
                    });
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple.shade100,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    label: Text('Search language'),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, i) {
                    return LanguageCard(
                      language: filteredLanguageList.isEmpty
                          ? languageList[i]
                          : filteredLanguageList[i],
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  itemCount: filteredLanguageList.isEmpty
                      ? languageList.length
                      : filteredLanguageList.length,
                ),
              ),
            ],
          ),
        ));
  }
}
