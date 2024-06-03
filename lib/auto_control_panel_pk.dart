library auto_control_panel_pk;

class Abastecimento {
  double valorTotal;
  double quantidadeLitros;
  int quilometragemRodada;

  Abastecimento(
    this.valorTotal,
    this.quantidadeLitros,
    this.quilometragemRodada,
  );

  double autonomia() {
    return quilometragemRodada / quantidadeLitros;
  }
}
