part of datepickerx;

/// Italian (IT)
class _StringsItIt extends _StringsI18n {
  const _StringsItIt();

  @override
  String getCancelText() {
    return 'Annulla';
  }

  @override
  String getDoneText() {
    return 'Salva';
  }

  @override
  List<String> getMonths() {
    return [
      "Gennaio",
      "Febbraio",
      "Marzo",
      "Aprile",
      "Maggio",
      "Giugno",
      "Luglio",
      "Agosto",
      "Settembre",
      "Ottobre",
      "Novembre",
      "Dicembre"
    ];
  }

  @override
  List<String> getWeeksFull() {
    return [
      "Lunedì",
      "Martedì",
      "Mercoledì",
      "Giovedì",
      "Venerdì",
      "Sabato",
      "Domenica",
    ];
  }

  @override
  List<String> getWeeksShort() {
    return [
      "Lu",
      "Ma",
      "Me",
      "Gi",
      "Ve",
      "Sa",
      "Do",
    ];
  }
}
