void main() {
  var pessoa1 = Pessoa('Alice', 30);
  var pessoa2 = Pessoa('Bob', 25);

  print('Detalhes da Pessoa 1:');
  pessoa1.exibirDetalhes();
  print('----------------------');
  print('Detalhes da Pessoa 2:');
  pessoa2.exibirDetalhes();

  pessoa1.setIdade(35);
  pessoa2.setIdade(28);

  print('----------------------');
  print('Detalhes atualizados da Pessoa 1:');
  pessoa1.exibirDetalhes();
  print('----------------------');
  print('Detalhes atualizados da Pessoa 2:');
  pessoa2.exibirDetalhes();
}


class Pessoa {
  String nome;
  int _idade;

  // Construtor
  Pessoa(this.nome, this._idade);

  // Getter para idade
  int getIdade() {
    return _idade;
  }

  // Setter para idade
  void setIdade(int novaIdade) {
    if (novaIdade >= 0) {
      _idade = novaIdade;
    } else {
      print('A idade não pode ser negativa.');
    }
  }

  // Método para exibir os detalhes da pessoa
  void exibirDetalhes() {
    print('Nome: $nome');
    print('Idade: $_idade');
  }
}
