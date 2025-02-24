void main() {
  var funcionario = Funcionario('Carlos', 3000.00);
  print('Salário antes do aumento: R\$ ${funcionario.salario}');
  funcionario.aumentarSalario(10);
  print('Salário após aumento: R\$ ${funcionario.salario}');
}


class Funcionario {
  String nome;
  double _salario;

  // Construtor
  Funcionario(this.nome, this._salario);

  // Getter para salário
  double get salario => _salario;

  // Método para aumentar o salário
  void aumentarSalario(double percentual) {
    _salario += _salario * (percentual / 100);
  }
}
