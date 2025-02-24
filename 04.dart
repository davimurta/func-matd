void main() {
  var conta = ContaBancaria('João', 1000.00);
  conta.depositar(500.00);
  conta.sacar(200.00);
  print('Saldo atual: R\$ ${conta.getSaldo()}');
}


class ContaBancaria {
  String titular;
  double _saldo;

  // Construtor
  ContaBancaria(this.titular, this._saldo);

  // Método para depositar
  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print('Depositado: R\$ $valor');
    } else {
      print('Valor de depósito inválido.');
    }
  }

  // Método para sacar
  void sacar(double valor) {
    if (valor <= _saldo) {
      _saldo -= valor;
      print('Sacado: R\$ $valor');
    } else {
      print('Saldo insuficiente.');
    }
  }

  // Método para obter saldo
  double getSaldo() {
    return _saldo;
  }
}
