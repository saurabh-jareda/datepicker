part of datepickerx;

/// Spanish (ES)
class _StringsEsEs extends _StringsI18n {
  const _StringsEsEs();

  @override
  String getCancelText() {
    return "Cancelar";
  }

  @override
  String getDoneText() {
    return "Aceptar";
  }

  @override
  List<String> getMonths() {
    return [
      "Enero",
      "Febrero",
      "Marzo",
      "Abril",
      "Mayo",
      "Junio",
      "Julio",
      "Agosto",
      "Septiembre",
      "Octubre",
      "Noviembre",
      "Diciembre"
    ];
  }

  @override
  List<String> getWeeksFull() {
    return [
      "Lunes",
      "Martes",
      "Miercoles",
      "Jueves",
      "Viernes",
      "Sabado",
      "Domingo",
    ];
  }

  @override
  List<String>? getWeeksShort() {
    return null;
  }
}
