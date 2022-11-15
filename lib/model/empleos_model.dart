
import 'package:flutter_byronpilligua_examenlistview/model/data.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

final _empleos = [
    Empleo(
      id: 1,
      brand: '2 años de Experiencia',
      model: 'Auditor Imformatico',
      manufacturingDate: DateTime(2022, 10, 03, 19, 43),
      description:'Importante Empresa desea contratar profesional con titulo de tercer nivel en el area de Ti, con disponibilidad *Tiempo Completo                                                           *Trabajo en equipo      enviar correo a pilliguabygre@gmail.com',
    
),
    Empleo(
     id: 2,
      brand: '2 años de Experiencia',
      model: 'Desarrollador Movil',
      manufacturingDate: DateTime(2022, 10, 03, 19, 43),
      description:'Importante Empresa desea contratar profesional con titulo de tercer nivel en el area de Ti, con disponibilidad *Tiempo Completo                                                           *Trabajo en equipo      enviar correo a pilliguabygre@gmail.com',

),
    Empleo(
      id: 3,
      brand: '2 años de Experiencia',
      model: 'Analista en Base de Datos',
      manufacturingDate: DateTime(2022, 10, 03, 19, 43),
      description:'Importante Empresa desea contratar profesional con titulo de tercer nivel en el area de Ti, con disponibilidad *Tiempo Completo                                                           *Trabajo en equipo      enviar correo a pilliguabygre@gmail.com',
    
),
    Empleo(
      id: 4,
      brand: '2 años de Experiencia',
      model: 'Tutor de Desarrollo Movil',
      manufacturingDate: DateTime(2022, 10, 03, 19, 43),
      description:'Importante Empresa desea contratar profesional con titulo de tercer nivel en el area de Ti, con disponibilidad *Tiempo Completo                                                           *Trabajo en equipo      enviar correo a pilliguabygre@gmail.com',
    
),
  Empleo(
      id: 5,
      brand: '2 años de Experiencia',
      model: 'Desarrollador Web',
      manufacturingDate: DateTime(2022, 10, 03, 19, 43),
      description:'Importante Empresa desea contratar profesional con titulo de tercer nivel en el area de Ti, con disponibilidad *Tiempo Completo                                                           *Trabajo en equipo      enviar correo a pilliguabygre@gmail.com',
    
), 
 Empleo(
      id: 6,
      brand: '2 años de Experiencia',
      model: 'Gerente en Ti',
      manufacturingDate: DateTime(2022, 10, 03, 19, 43),
      description:'Importante Empresa desea contratar profesional con titulo de tercer nivel en el area de Ti, con disponibilidad *Tiempo Completo                                                           *Trabajo en equipo      enviar correo a pilliguabygre@gmail.com',
    
)
  ];

 ///
  /// Public API starts here :)
  ///

  /// Returns all emails.
  List<Empleo> getEmpleos() {
    return _empleos;
  }

  /// Marks email identified by its id as read.
  void markEmailAsRead(int id) {
    final index = _empleos.indexWhere((empleo) => empleo.id == id);
    _empleos[index].read = true;
  }

  /// Deletes email identified by its id.
  void deleteCarros(int id) {
    _empleos.removeWhere((empleo) => empleo.id == id);
  }
}


