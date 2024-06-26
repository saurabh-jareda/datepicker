part of datepickerx;

/// Lithuanian (LT)
class _StringsLtLt extends _StringsI18n {
  const _StringsLtLt();

  @override
  String getCancelText() {
    return 'Atšaukti';
  }

  @override
  String getDoneText() {
    return 'Baigta';
  }

  @override
  List<String> getMonths() {
    return [
      "Sausis",
      "Vasaris",
      "Kovas",
      "Balandis",
      "Gegužė",
      "Birželis",
      "Liepa",
      "Rugpjūtis",
      "Rugsėjis",
      "Spalis",
      "Lapkritis",
      "Gruodis",
    ];
  }

  @override
  List<String> getWeeksFull() {
    return [
      "Pirmadienis",
      "Antradienis",
      "Trečiadienis",
      "Ketvirtadienis",
      "Penktadienis",
      "Šeštadienis",
      "Sekmadienis",
    ];
  }

  @override
  List<String> getWeeksShort() {
    return [
      "pir",
      "antr",
      "treč",
      "ketv",
      "penkt",
      "šeš",
      "sekm",
    ];
  }
}
