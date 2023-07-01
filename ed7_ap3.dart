void main() {
  final produtos = <Produto>[];
  final nomes = ['Garrafa', 'Camisa', 'Colar', 'Bermuda', 'Oculos'];
  final precos = [2.0, 10.0, 8.5, 4.0, 14.0];

  for (var i = 0; i < nomes.length; i++) {
    Produto produto = Produto(nomes[i], precos[i]);
    produtos.add(produto);

    final precoDesconto = produto.desconto(5.0);
    print(
        "Novo preco do produto ${produtos[i].nome} (com desconto): $precoDesconto");
  }
}

class Produto {
  Produto(this.nome, this.preco);
  final String nome;
  double preco;

  double desconto(double percentual) {
    return preco - (preco * (percentual / 100));
  }

  @override
  String toString() {
    return "$nome $preco";
  }
}
