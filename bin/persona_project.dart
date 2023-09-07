void main() {
  final initProfesor = Profesor(nombre: 'Oscar', sueldo: 400, edad: 38);
  final initDirector = Director(nombre: 'Luis', sueldo: 800, edad: 45);
  final initEmpleado = Empleado(nombre: 'Rodrigo', sueldo: 500, edad: 34);

  print('P1: $initProfesor');
  print('P2: $initDirector');
  print('P3: $initEmpleado');
}

class Persona {
  String nombre;
  final TipoPersona tipo;
  int edad;

  Persona({
    required this.nombre,
    required this.edad,
    required this.tipo
  });  
}

abstract class Salario {
  double salario;

  Salario({
    required this.salario,
  });
}
enum TipoPersona { director, empleado, profesor }

class Profesor extends Persona implements Salario {
  Profesor({required String nombre, required double sueldo, required int edad})
      : salario = sueldo,
        super(nombre: nombre, edad: edad, tipo: TipoPersona.profesor);

  @override
  double salario;

  @override
  String toString() {
    final tipoStr = tipo.toString().split('.').last;
    return '[Salario: \$$salario, Nombre: $nombre, Tipo: $tipoStr]'; 
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
    final tipoStr = tipo.toString().split('.').last;
    return '[Salario: \$$salario, Nombre: $nombre, Tipo: $tipoStr]'; 
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
    final tipoStr = tipo.toString().split('.').last;
    return '[Salario: \$$salario, Nombre: $nombre, Tipo: $tipoStr]'; 
  }
}