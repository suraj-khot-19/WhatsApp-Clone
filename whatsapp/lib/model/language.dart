class Language {
  final String name;
  final String nameInEnglish;

  Language({required this.name, required this.nameInEnglish});
}

class LanguageData {
  List<Language> list = [
    Language(name: "English", nameInEnglish: "(Device Language)"),
    Language(name: "हिन्दी", nameInEnglish: "Hindi"),
    Language(name: "ગુજરાતી", nameInEnglish: "Gujarati"),
    Language(name: "मराठी", nameInEnglish: "Marathi"),
    Language(name: "বাংলা", nameInEnglish: "Bengali"),
    Language(name: "ਪੰਜਾਬੀ", nameInEnglish: "Punjabi"),
    Language(name: "தமிழ்", nameInEnglish: "Tamil"),
    Language(name: "తెలుగు", nameInEnglish: "Telugu"),
    Language(name: "ಕನ್ನಡ", nameInEnglish: "Kannada"),
    Language(name: "മലയാളം", nameInEnglish: "Malayalam"),
    Language(name: "ଓଡ଼ିଆ", nameInEnglish: "Odia"),
    Language(name: "اردو", nameInEnglish: "Urdu"),
    Language(name: "日本語", nameInEnglish: "Japanese"),
    Language(name: "中文", nameInEnglish: "Chinese"),
    Language(name: "한국어", nameInEnglish: "Korean"),
    Language(name: "Русский", nameInEnglish: "Russian"),
    Language(name: "Español", nameInEnglish: "Spanish"),
    Language(name: "Français", nameInEnglish: "French"),
    Language(name: "Deutsch", nameInEnglish: "German"),
    Language(name: "Italiano", nameInEnglish: "Italian"),
    Language(name: "Português", nameInEnglish: "Portuguese"),
    Language(name: "Ελληνικά", nameInEnglish: "Greek"),
    Language(name: "Türkçe", nameInEnglish: "Turkish"),
    Language(name: "العربية", nameInEnglish: "Arabic"),
    Language(name: "فارسی", nameInEnglish: "Persian"),
    Language(name: "ไทย", nameInEnglish: "Thai"),
    Language(name: "Svenska", nameInEnglish: "Swedish"),
    Language(name: "Nederlands", nameInEnglish: "Dutch"),
    Language(name: "Polski", nameInEnglish: "Polish"),
    Language(name: "Română", nameInEnglish: "Romanian"),
  ];
//getter
  List<Language> get languages => list;
}
