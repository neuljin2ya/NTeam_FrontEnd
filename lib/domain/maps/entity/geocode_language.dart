enum GeocodeLanguage {
  kor,
  eng;

  String get apiCode => switch (this) {
        GeocodeLanguage.kor => 'kor',
        GeocodeLanguage.eng => 'eng',
      };
}
