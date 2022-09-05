import 'package:flutter/material.dart';
import 'package:lingual/models/language.dart';
import 'package:lingual/widgets/circle_flag.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard({Key? key, required this.language, required this.onTap})
      : super(key: key);

  final Language language;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Card(
          color: Colors.purple.shade100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleFlag(country: language.getCountryFlag()),
              SizedBox(
                width: 20,
                height: 100,
              ),
              Text(
                language.name,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
