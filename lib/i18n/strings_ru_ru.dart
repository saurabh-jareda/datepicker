part of datepickerx;

/// Russian (RU)
class _StringsRuRu extends _StringsI18n {
  const _StringsRuRu();

  @override
  String getCancelText() {
    return 'Отмена';
  }

  @override
  String getDoneText() {
    return 'Готово';
  }

  @override
  List<String> getMonths() {
    return [
      "Январь",
      "Февраль",
      "Март",
      "Апрель",
      "Май",
      "Июнь",
      "Июль",
      "Август",
      "Сентябрь",
      "Октябрь",
      "Ноябрь",
      "Декабрь",
    ];
  }

  @override
  List<String> getWeeksFull() {
    return [
      "Понедельник",
      "Вторник",
      "Среда",
      "Четверг",
      "Пятница",
      "Суббота",
      "Воскресенье",
    ];
  }

  @override
  List<String> getWeeksShort() {
    return [
      "пн",
      "вт",
      "ср",
      "чт",
      "пт",
      "сб",
      "вс",
    ];
  }
}
