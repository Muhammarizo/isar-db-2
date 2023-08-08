import 'package:isar/isar.dart';
import 'package:isar_db_2/entities/student.dart';
import 'package:isar_db_2/entities/teacher.dart';
part 'course.g.dart';

@collection
class Course {
  Id id = Isar.autoIncrement;
  late String title;

  @Backlink(to: 'course')
  final teacher = IsarLink<Teacher>();
  
  @Backlink(to: 'courses')
  final students = IsarLinks<Student>();

}