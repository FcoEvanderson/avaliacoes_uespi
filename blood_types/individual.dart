class Genotype {
  final String _genotype;

  Genotype(String genotype) : _genotype = _validateGenotype(genotype);

  String get genotype => _genotype;

  String get bloodType => _getBloodType();

  static String _validateGenotype(String genotype) {
    final validGenotypes = [
        "AA", 
        "Ai", 
        "BB", 
        "Bi", 
        "AB", 
        "ii"
        ];

    if (!validGenotypes.contains(genotype)) {
      throw ArgumentError("Genotype inválido: $genotype");
    }
    return genotype;
  }

  String _getBloodType() {
    final bloodTypeMap = {
      "AA": "A",
      "Ai": "A",
      "BB": "B",
      "Bi": "B",
      "AB": "AB",
      "ii": "O",
    };
    return bloodTypeMap[_genotype] ?? "Unknow bloodtype";
  }

  @override
  String toString() {
    return _genotype;
  }

}
