void main() {
  final initProfesor = Persona.create(nombre: 'Oscar', sueldo: 400, edad: 38, tipo: TipoPersona.profesor);
  final initDirector = Persona.create(nombre: 'Luis', sueldo: 800, edad: 45, tipo: TipoPersona.director);
  final initEmpleado = Persona.create(nombre: 'Rodrigo', sueldo: 500, edad: 34, tipo: TipoPersona.empleado);

  print('P1: $initProfesor');
  print('P2: $initDirector');
  print('P3: $initEmpleado');
}

enum TipoPersona { director, empleado, profesor }

class Persona {
  String nombre;
  int edad;
  double salario;
  final TipoPersona tipo;

  Persona({
    required this.nombre,
    required this.edad,
    required this.salario,
    required this.tipo,
  });

  @override
  String toString() {
    //emun value to tipoStr
    final tipoStr = tipo.toString().split('.').last;
    return '[Nombre: $nombre, Edad: $edad, Tipo: $tipoStr, Salario: \$$salario]';
  }
  
  //* factory method: función estática de una clase que se utiliza para crear instancias
  factory Persona.create({
    required String nombre,
    required double sueldo,
    required int edad,
    required TipoPersona tipo,
  }) {
    return Persona(
      nombre: nombre,
      edad: edad,
      tipo: tipo,
      salario: sueldo,
    );
  }
}