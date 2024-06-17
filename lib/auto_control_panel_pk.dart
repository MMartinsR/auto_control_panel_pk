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

  static Abastecimento fromMap(Map<String, dynamic> map) {
    return Abastecimento(
        map['valorTotal'], map['quantidadeLitros'], map['quilometragemRodada']);
  }
}
