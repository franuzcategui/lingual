import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';

class CircleFlag extends StatelessWidget {
  const CircleFlag({
    Key? key,
    required this.country,
  }) : super(key: key);

  final Country country;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox(
          width: 50,
          height: 50,
          child: CountryPickerUtils.getDefaultFlagImage(country)),
    );
  }
}
