void main() {
  ContaBancaria guilherme = ContaBancaria(300, "Guilherme");
  print(guilherme);

  guilherme.depositar(200);
  print(guilherme);

  guilherme.sacar(150);
  print(guilherme);

  guilherme.sacar(400);
  print(guilherme);
}

class ContaBancaria {
  ContaBancaria(this.saldo, this.titular);

  double saldo;
  String titular;

  void sacar(double valor) {
    if (valor < 0) {
      throw ExceptionNegativo();
    }
    if (saldo < valor) {
      throw SaldoInsuficiente();
    }
    saldo -= valor;
  }

  void depositar(double valor) {
    if (valor < 0) {
      throw ExceptionNegativo();
    }
    saldo += valor;
  }

  @override
  String toString() {
    return "Saldo atual: $saldo";
  }
}

class SaldoInsuficiente implements Exception {
  @override
  String toString() {
    return "Saldo Insuficiente.";
  }
}

class ExceptionNegativo implements Exception {
  @override
  String toString() {
    return "Não é possivel passar um valor negativo.";
  }
}
