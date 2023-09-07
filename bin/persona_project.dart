void main() {
  final initProfesor = Profesor(sueldo: 100);
  final initDirector = Director(sueldo: 500);
  final initEmpleado = Empleado(sueldo: 300);
  print('Profesor: $initProfesor');
  print('Director: $initDirector');
  print('Empleado: $initEmpleado');
}

interface class Persona{
  String nombre;
  final TipoPersona tipo;

  Persona({
    required this.nombre,
    required this.tipo
  });
}

abstract class Salario{
  double salario;

  Salario({
    required this.salario
  });
}

enum TipoPersona{director, empleado, profesor}

class Profesor extends Persona implements Salario{
  Profesor({required double sueldo})
      : salario = sueldo, super(nombre: 'Osvaldo', tipo: TipoPersona.profesor);

  @override
  double salario;

  @override
  void Salario(double amount){
    salario = (amount * 0.5);
  }

  @override
  String toString(){
  return 'Salario: $salario, - Nombre: $nombre, Tipo: $tipo';
}
}

class Director extends Persona{
  Director({required double sueldo})
      : salario = sueldo, super(nombre: 'Rodrigo', tipo: TipoPersona.director);

  @override
  double salario;

  @override
  void Salario(double amount){
    salario = (amount * 0.5);
  }

  @override
  String toString(){
  return 'Salario: $salario, - Nombre: $nombre, Tipo: $tipo';
}
  
  
}

class Empleado extends Persona{
Empleado({required double sueldo})
      : salario = sueldo, super(nombre: 'Rodrigo', tipo: TipoPersona.empleado);

  @override
  double salario;

  @override
  void Salario(double amount){
    salario = (amount * 0.5);
  }

  @override
  String toString(){
  return 'Salario: $salario, - Nombre: $nombre, Tipo: $tipo';
}  
}