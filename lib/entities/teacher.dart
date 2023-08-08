import 'package:isar/isar.dart';
import 'package:isar_db_2/entities/course.dart';

part 'teacher.g.dart';

@collection
class Teacher {
  Id id = Isar.autoIncrement;
  late String name;
  final course = IsarLink<Course>();
}