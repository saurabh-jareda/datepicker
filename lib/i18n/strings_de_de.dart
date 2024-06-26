part of datepickerx;

/// German (DE)
class _StringsDeDe extends _StringsI18n {
  const _StringsDeDe();

  @override
  String getCancelText() {
    return 'Abbrechen';
  }

  @override
  String getDoneText() {
    return 'Fertig';
  }

  @override
  List<String> getMonths() {
    return [
      "Januar",
      "Februar",
      "März",
      "April",
      "Mai",
      "Juni",
      "Juli",
      "August",
      "September",
      "Oktober",
      "November",
      "Dezember",
    ];
  }

  @override
  List<String> getWeeksFull() {
    return [
      "Montag",
      "Dienstag",
      "Mittwoch",
      "Donnerstag",
      "Freitag",
      "Samstag",
      "Sonntag",
    ];
  }

  @override
  List<String> getWeeksShort() {
    return [
      "Mo",
      "Di",
      "Mi",
      "Do",
      "Fr",
      "Sa",
      "So",
    ];
  }
}
