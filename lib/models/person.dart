import 'package:isar/isar.dart';

part 'person.g.dart';

@Collection()
class Person {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  late String cnie;

  @Index(type: IndexType.value)
  late String firstNameAr;

  @Index(type: IndexType.value)
  late String lastNameAr;

  @Index(type: IndexType.value)
  String? firstNameEn;

  @Index(type: IndexType.value)
  String? lastNameEn;

  @Index(type: IndexType.value)
  late String voterCircle;

  @Index(type: IndexType.value)
  late String voterNumber;

  @Index(type: IndexType.value)
  String? idcs; // Optional but must be 10 digits when provided

  bool isValidIdcs(String? value) {
    if (value == null) return true;
    return value.length == 10 && RegExp(r'^[0-9]{10}$').hasMatch(value);
  }

  bool isValidVoterNumber(String value) {
    return RegExp(r'^[0-9]+$').hasMatch(value);
  }

  String? fatherName;
  String? motherName;
  String? grandfatherPaternal;
  String? grandfatherMaternal;
  String? address;
  DateTime? birthDate;
  String? birthLocation;
  List<String>? attachmentIds;

  int? get age {
    if (birthDate == null) return null;
    final currentYear = DateTime.now().year;
    return currentYear - birthDate!.year;
  }
}
