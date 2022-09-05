import 'package:lingual/data/language_list.dart' as language_list;
import 'package:lingual/models/language.dart';

class LanguageData {
  List<Language> getLanguageList() {
    List<Language> languageList = [];

    language_list.countryData.forEach((key, value) {
      String languageIso = key;
      String name = value[0];
      String flagISo = value[1];
      languageList.add(Language(languageIso, name, flagISo));
    });

    return languageList;
  }
}
