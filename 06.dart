void main() {
  var produto1 = Produto('Camiseta', 49.99);
  var produto2 = Produto.desconto('Camiseta com desconto', 49.99, 10.00);
  
  print('Preço original: R\$ ${produto1.preco}');
  print('Preço com desconto: R\$ ${produto2.preco}');
}


class Produto {
  String nome;
  double _preco;

  // Construtor principal
  Produto(this.nome, this._preco);

  // Construtor nomeado Produto.desconto
  Produto.desconto(this.nome, double precoOriginal, double desconto)
      : _preco = precoOriginal - desconto;

  // Método para obter o preço
  double get preco => _preco;
}
