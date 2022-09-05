import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';

class Language {
  final String languageIso;
  final String name;
  final String countryIso;

  Language(this.languageIso, this.name, this.countryIso);

  Country getCountryFlag() {
    Country countryFlag = CountryPickerUtils.getCountryByIsoCode(countryIso);
    return countryFlag;
  }
}
