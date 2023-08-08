import 'package:isar/isar.dart';
import 'package:isar_db_2/entities/course.dart';

part 'student.g.dart';


@collection
class Student {
  Id id = Isar.autoIncrement;
  late String name;
  final courses = IsarLinks<Course>();

}