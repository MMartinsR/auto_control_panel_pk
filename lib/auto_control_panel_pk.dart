library auto_control_panel_pk;

class Abastecimento {
  String? id;
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

  double valorPorLitro() {
    return valorTotal / quantidadeLitros;
  }

  double autonomiaMedia(List<Abastecimento> abastecimentos) {
    double somatorio = 0.0;
    int quant = abastecimentos.length;
    for (var abast in abastecimentos) {
      somatorio += abast.autonomia();
    }
    return somatorio / quant;
  }
}
