void main() {
  var cadastro = Cadastro();

  cadastro.adicionarPessoa(Pessoa('Alice', 30));
  cadastro.adicionarPessoa(Pessoa('Bob', 25));

  cadastro.listarPessoas();
}


class Pessoa {
  String nome;
  int idade;

  // Construtor
  Pessoa(this.nome, this.idade);
}

class Cadastro {
  List<Pessoa> pessoas = [];

  void adicionarPessoa(Pessoa p) {
    pessoas.add(p);
  }

  void listarPessoas() {
    for (var pessoa in pessoas) {
      print('Nome: ${pessoa.nome}, Idade: ${pessoa.idade}');
    }
  }
}
