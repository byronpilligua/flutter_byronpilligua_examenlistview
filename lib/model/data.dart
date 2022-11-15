class Empleo{
  final int  id;
  final String brand;
  final String model;
  final DateTime manufacturingDate;
  final String description;
 bool read;

  Empleo({
    required this.id,
    required this.brand,
    required this.model,
    required this.manufacturingDate,
    required this.description,
    this.read = false,
  });
}