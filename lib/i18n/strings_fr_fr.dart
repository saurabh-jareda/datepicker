part of datepickerx;

/// French (FR)
class _StringsFrFr extends _StringsI18n {
  const _StringsFrFr();

  @override
  String getCancelText() {
    return 'Annuler';
  }

  @override
  String getDoneText() {
    return 'Valider';
  }

  @override
  List<String> getMonths() {
    return [
      "Janvier",
      "Février",
      "Mars",
      "Avril",
      "Mai",
      "Juin",
      "Juillet",
      "Août",
      "Septembre",
      "Octobre",
      "Novembre",
      "Décembre"
    ];
  }

  @override
  List<String> getWeeksFull() {
    return [
      "Lundi",
      "Mardi",
      "Mercredi",
      "Jeudi",
      "Vendredi",
      "Samedi",
      "Dimanche",
    ];
  }

  @override
  List<String>? getWeeksShort() {
    return null;
  }
}
