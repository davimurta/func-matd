class Person {
  String? name;
  int? age;

  // Constructors
  Person(String name, int _age) {
    this.name = name;
    this.age = age;
  }

  // Method
  void showData() {
    print('Name = $name');
    print('Age = $age');
  }

  void getIdade() {
    print(age);
  }

  void setIdade(int newage) {
    age = newage;
  }
}

class Carro {
  String? marca, modelo;
  int? preco;

  // Constructors
  Person(String marca, modelo, int _preco) {
    this.marca = marca;
    this.modelo = modelo;
    this.preco = preco;
  }

  void getProco() {
    print(preco);
  }

  void setIdade(int newpreco) {
    preco = newpreco;
  }
}
