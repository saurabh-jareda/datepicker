part of datepickerx;

/// Czech (CZ)
class _StringsCsCz extends _StringsI18n {
  const _StringsCsCz();

  @override
  String getCancelText() {
    return 'Zrušit';
  }

  @override
  String getDoneText() {
    return 'Hotovo';
  }

  @override
  List<String> getMonths() {
    return [
      "Leden",
      "Únor",
      "Březen",
      "Duben",
      "Květen",
      "Červen",
      "Červenec",
      "Srpen",
      "Září",
      "Říjen",
      "Listopad",
      "Prosinec"
    ];
  }

  @override
  List<String> getWeeksFull() {
    return [
      "Pondělí",
      "Úterý",
      "Středa",
      "Čtvrtek",
      "Pátek",
      "Sobota",
      "Neděle",
    ];
  }

  @override
  List<String> getWeeksShort() {
    return [
      "Po",
      "Út",
      "St",
      "Čt",
      "Pá",
      "So",
      "Ne",
    ];
  }
}
