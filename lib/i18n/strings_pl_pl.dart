part of datepickerx;

/// Polish (PL) Poland
class _StringsPlPl extends _StringsI18n {
  const _StringsPlPl();

  @override
  String getCancelText() {
    return 'Anuluj';
  }

  @override
  String getDoneText() {
    return 'OK';
  }

  @override
  List<String> getMonths() {
    return [
      "Styczeń",
      "Luty",
      "Marzec",
      "Kwiecień",
      "Maj",
      "Czerwiec",
      "Lipiec",
      "Sierpień",
      "Wrzesień",
      "Październik",
      "Listopad",
      "Grudzień"
    ];
  }

  @override
  List<String> getWeeksFull() {
    return [
      "Poniedziałek",
      "Wtorek",
      "Środa",
      "Czwartek",
      "Piątek",
      "Sobota",
      "Niedziela",
    ];
  }

  @override
  List<String> getWeeksShort() {
    return [
      "Pon",
      "Wt",
      "Śr",
      "Czw",
      "Pt",
      "Sob",
      "Ndz",
    ];
  }
}
