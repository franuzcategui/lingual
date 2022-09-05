const String languageJson = '''
{
"af": {
"name": "Afrikaans",
"native": "Afrikaans"
},
"am": {
"name": "Amharic",
"native": "አማርኛ"
},
"ar": {
"name": "Arabic",
"native": "العربية",
"rtl": 1
},
"ay": {
"name": "Aymara",
"native": "Aymar"
},
"az": {
"name": "Azerbaijani",
"native": "Azərbaycanca / آذربايجان"
},
"be": {
"name": "Belarusian",
"native": "Беларуская"
},
"bg": {
"name": "Bulgarian",
"native": "Български"
},
"bi": {
"name": "Bislama",
"native": "Bislama"
},
"bn": {
"name": "Bengali",
"native": "বাংলা"
},
"bs": {
"name": "Bosnian",
"native": "Bosanski"
},
"ca": {
"name": "Catalan",
"native": "Català"
},
"ch": {
"name": "Chamorro",
"native": "Chamoru"
},
"cs": {
"name": "Czech",
"native": "Čeština"
},
"da": {
"name": "Danish",
"native": "Dansk"
},
"de": {
"name": "German",
"native": "Deutsch"
},
"dv": {
"name": "Divehi",
"native": "ދިވެހިބަސް",
"rtl": 1
},
"dz": {
"name": "Dzongkha",
"native": "ཇོང་ཁ"
},
"el": {
"name": "Greek",
"native": "Ελληνικά"
},
"en": {
"name": "English",
"native": "English"
},
"es": {
"name": "Spanish",
"native": "Español"
},
"et": {
"name": "Estonian",
"native": "Eesti"
},
"eu": {
"name": "Basque",
"native": "Euskara"
},
"fa": {
"name": "Persian",
"native": "فارسی",
"rtl": 1
},
"ff": {
"name": "Peul",
"native": "Fulfulde"
},
"fi": {
"name": "Finnish",
"native": "Suomi"
},
"fj": {
"name": "Fijian",
"native": "Na Vosa Vakaviti"
},
"fo": {
"name": "Faroese",
"native": "Føroyskt"
},
"fr": {
"name": "French",
"native": "Français"
},
"ga": {
"name": "Irish",
"native": "Gaeilge"
},
"gl": {
"name": "Galician",
"native": "Galego"
},
"gn": {
"name": "Guarani",
"native": "Avañe'ẽ"
},
"gv": {
"name": "Manx",
"native": "Gaelg"
},
"he": {
"name": "Hebrew",
"native": "עברית",
"rtl": 1
},
"hi": {
"name": "Hindi",
"native": "हिन्दी"
},
"hr": {
"name": "Croatian",
"native": "Hrvatski"
},
"ht": {
"name": "Haitian",
"native": "Krèyol ayisyen"
},
"hu": {
"name": "Hungarian",
"native": "Magyar"
},
"hy": {
"name": "Armenian",
"native": "Հայերեն"
},
"id": {
"name": "Indonesian",
"native": "Bahasa Indonesia"
},
"is": {
"name": "Icelandic",
"native": "Íslenska"
},
"it": {
"name": "Italian",
"native": "Italiano"
},
"ja": {
"name": "Japanese",
"native": "日本語"
},
"ka": {
"name": "Georgian",
"native": "ქართული"
},
"kg": {
"name": "Kongo",
"native": "KiKongo"
},
"kk": {
"name": "Kazakh",
"native": "Қазақша"
},
"kl": {
"name": "Greenlandic",
"native": "Kalaallisut"
},
"km": {
"name": "Cambodian",
"native": "ភាសាខ្មែរ"
},
"ko": {
"name": "Korean",
"native": "한국어"
},
"ku": {
"name": "Kurdish",
"native": "Kurdî / كوردی",
"rtl": 1
},
"ky": {
"name": "Kyrgyz",
"native": "Кыргызча"
},
"la": {
"name": "Latin",
"native": "Latina"
},
"lb": {
"name": "Luxembourgish",
"native": "Lëtzebuergesch"
},
"ln": {
"name": "Lingala",
"native": "Lingála"
},
"lo": {
"name": "Laotian",
"native": "ລາວ / Pha xa lao"
},
"lt": {
"name": "Lithuanian",
"native": "Lietuvių"
},
"lu": {
"name": "Luba-Katanga",
"native": "Tshiluba"
},
"lv": {
"name": "Latvian",
"native": "Latviešu"
},
"mg": {
"name": "Malagasy",
"native": "Malagasy"
},
"mh": {
"name": "Marshallese",
"native": "Kajin Majel / Ebon"
},
"mi": {
"name": "Maori",
"native": "Māori"
},
"mk": {
"name": "Macedonian",
"native": "Македонски"
},
"mn": {
"name": "Mongolian",
"native": "Монгол"
},
"ms": {
"name": "Malay",
"native": "Bahasa Melayu"
},
"mt": {
"name": "Maltese",
"native": "bil-Malti"
},
"my": {
"name": "Burmese",
"native": "မြန်မာစာ"
},
"na": {
"name": "Nauruan",
"native": "Dorerin Naoero"
},
"nb": {
"name": "Norwegian Bokmål",
"native": "Norsk bokmål"
},
"nd": {
"name": "North Ndebele",
"native": "Sindebele"
},
"ne": {
"name": "Nepali",
"native": "नेपाली"
},
"nl": {
"name": "Dutch",
"native": "Nederlands"
},
"nn": {
"name": "Norwegian Nynorsk",
"native": "Norsk nynorsk"
},
"no": {
"name": "Norwegian",
"native": "Norsk"
},
"nr": {
"name": "South Ndebele",
"native": "isiNdebele"
},
"ny": {
"name": "Chichewa",
"native": "Chi-Chewa"
},
"oc": {
"name": "Occitan",
"native": "Occitan"
},
"pa": {
"name": "Panjabi / Punjabi",
"native": "ਪੰਜਾਬੀ / पंजाबी / پنجابي"
},
"pl": {
"name": "Polish",
"native": "Polski"
},
"ps": {
"name": "Pashto",
"native": "پښتو",
"rtl": 1
},
"pt": {
"name": "Portuguese",
"native": "Português"
},
"qu": {
"name": "Quechua",
"native": "Runa Simi"
},
"rn": {
"name": "Kirundi",
"native": "Kirundi"
},
"ro": {
"name": "Romanian",
"native": "Română"
},
"ru": {
"name": "Russian",
"native": "Русский"
},
"rw": {
"name": "Rwandi",
"native": "Kinyarwandi"
},
"sg": {
"name": "Sango",
"native": "Sängö"
},
"si": {
"name": "Sinhalese",
"native": "සිංහල"
},
"sk": {
"name": "Slovak",
"native": "Slovenčina"
},
"sl": {
"name": "Slovenian",
"native": "Slovenščina"
},
"sm": {
"name": "Samoan",
"native": "Gagana Samoa"
},
"sn": {
"name": "Shona",
"native": "chiShona"
},
"so": {
"name": "Somalia",
"native": "Soomaaliga"
},
"sq": {
"name": "Albanian",
"native": "Shqip"
},
"sr": {
"name": "Serbian",
"native": "Српски"
},
"ss": {
"name": "Swati",
"native": "SiSwati"
},
"st": {
"name": "Southern Sotho",
"native": "Sesotho"
},
"sv": {
"name": "Swedish",
"native": "Svenska"
},
"sw": {
"name": "Swahili",
"native": "Kiswahili"
},
"ta": {
"name": "Tamil",
"native": "தமிழ்"
},
"tg": {
"name": "Tajik",
"native": "Тоҷикӣ"
},
"th": {
"name": "Thai",
"native": "ไทย / Phasa Thai"
},
"ti": {
"name": "Tigrinya",
"native": "ትግርኛ"
},
"tk": {
"name": "Turkmen",
"native": "Туркмен / تركمن"
},
"tn": {
"name": "Tswana",
"native": "Setswana"
},
"to": {
"name": "Tonga",
"native": "Lea Faka-Tonga"
},
"tr": {
"name": "Turkish",
"native": "Türkçe"
},
"ts": {
"name": "Tsonga",
"native": "Xitsonga"
},
"uk": {
"name": "Ukrainian",
"native": "Українська"
},
"ur": {
"name": "Urdu",
"native": "اردو",
"rtl": 1
},
"uz": {
"name": "Uzbek",
"native": "Ўзбек"
},
"ve": {
"name": "Venda",
"native": "Tshivenḓa"
},
"vi": {
"name": "Vietnamese",
"native": "Tiếng Việt"
},
"xh": {
"name": "Xhosa",
"native": "isiXhosa"
},
"zh": {
"name": "Chinese",
"native": "中文"
},
"zu": {
"name": "Zulu",
"native": "isiZulu"
}
}
''';
