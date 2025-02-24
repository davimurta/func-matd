void main() {
  var aluno = Aluno('Maria', 8.5, 6.0);
  print('Média: ${aluno.calcularMedia()}');
  print('Status: ${aluno.verificarAprovacao()}');
}


class Aluno {
  String nome;
  double _nota1, _nota2;

  // Construtor
  Aluno(this.nome, this._nota1, this._nota2);

  // Método para calcular média
  double calcularMedia() {
    return (_nota1 + _nota2) / 2;
  }

  // Método para verificar aprovação
  String verificarAprovacao() {
    double media = calcularMedia();
    return media >= 7 ? 'Aprovado' : 'Reprovado';
  }
}
