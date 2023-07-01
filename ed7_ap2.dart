void main() {
  Retangulo ret = Retangulo(7, 18);
  ret.calcularArea();
  print(ret);
}

class Retangulo {
  Retangulo(this.largura, this.altura);
  final double largura;
  final double altura;
  late final double area;

  void calcularArea() {
    area = largura * altura;
  }

  @override
  String toString() {
    return "Area do Retangulo: $area";
  }
}
