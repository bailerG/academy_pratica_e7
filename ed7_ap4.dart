import 'dart:math';

void main() {
  final aleatorio = Random();

  Pessoa eu = Pessoa();
  eu.nome = "Guilherme";
  eu.idade = aleatorio.nextInt(99) + 1;
  eu.altura = (aleatorio.nextDouble() * 1.3) + 1;
  print(eu);
}

class Pessoa {
  String _nome = "";
  int _idade = 0;
  double _altura = 0.0;

  String get nome => _nome;
  int get idade => _idade;
  double get altura => _altura;

  set nome(String valor) {
    _nome = valor;
  }

  set idade(int valor) {
    if (valor <= 0) {
      print("A idade deve ser um valor positivo");
    }
    _idade = valor;
  }

  set altura(double valor) {
    _altura = valor;
  }

  @override
  String toString() {
    String stringPessoa = """ 
    Nome: $_nome
    Idade: $_idade
    Altura: ${_altura.toStringAsFixed(2)}
    """;
    return stringPessoa;
  }
}
