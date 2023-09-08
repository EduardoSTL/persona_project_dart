void main() {
  final initProfesor = Profesor(nombre: 'Oscar', sueldo: 400, edad: 38);
  final initDirector = Director(nombre: 'Luis', sueldo: 800, edad: 45);
  final initEmpleado = Empleado(nombre: 'Rodrigo', sueldo: 500, edad: 34);

  print('P1: $initProfesor');
  print('P2: $initDirector');
  print('P3: $initEmpleado');
}
enum TipoPersona { director, empleado, profesor }

class Persona {
  String nombre;
  int edad;
  final TipoPersona tipo;

  Persona({
    required this.nombre,
    required this.edad,
    required this.tipo
  });  

  @override
  String toString(){
    //emun value to tipoStr
    final tipoStr = tipo.toString().split('.').last;
    return '[Nombre: $nombre, Edad: $edad, Tipo: $tipoStr]';
  }
}

abstract class Salario {
  double salario;

  Salario({
    required this.salario,
  });
}

class Profesor extends Persona implements Salario {
  Profesor({required String nombre, required double sueldo, required int edad})
      : salario = sueldo,
        super(nombre: nombre, edad: edad, tipo: TipoPersona.profesor);

  @override
  double salario;

  @override
  String toString() {
    return '${super.toString()} Salario: \$$salario';
  }
}

class Director extends Persona implements Salario {
  Director({required String nombre, required double sueldo, required int edad})
      : salario = sueldo,
        super(nombre: nombre, edad: edad, tipo: TipoPersona.director);

  @override
  double salario;

  @override
  String toString() {
    return '${super.toString()} Salario: \$$salario';
  }
}

class Empleado extends Persona implements Salario {
  Empleado({required String nombre, required double sueldo, required int edad})
      : salario = sueldo,
        super(nombre: nombre, edad: edad, tipo: TipoPersona.empleado);

  @override
  double salario;

  @override
  String toString() {
    return '${super.toString()} Salario: \$$salario';
  }
}