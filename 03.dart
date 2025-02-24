void main() {
  var carro1 = Carro('Toyota', 'Corolla', 85000);
  var carro2 = Carro('Honda', 'Civic', 90000);

  print('Detalhes do Carro 1:');
  carro1.exibirDetalhes();
  print('----------------------');
  print('Detalhes do Carro 2:');
  carro2.exibirDetalhes();

  carro1.setPreco(80000);
  carro2.setPreco(95000);

  print('----------------------');
  print('Detalhes atualizados do Carro 1:');
  carro1.exibirDetalhes();
  print('----------------------');
  print('Detalhes atualizados do Carro 2:');
  carro2.exibirDetalhes();
}


class Carro {
  String marca;
  String modelo;
  int _preco;

  // Construtor
  Carro(this.marca, this.modelo, this._preco);

  // Getter para o preço
  int getPreco() {
    return _preco;
  }

  // Setter para o preço
  void setPreco(int novoPreco) {
    if (novoPreco >= 0) {
      _preco = novoPreco;
    } else {
      print('O preço não pode ser negativo.');
    }
  }

  // Método para exibir os detalhes do carro
  void exibirDetalhes() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Preço: R\$ $_preco');
  }
}
