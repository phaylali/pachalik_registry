import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../../models/person.dart';
import '../comments/comments.dart';

class DatabaseService {
  static late Isar isar;

  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [PersonSchema, CommentSchema],
      directory: dir.path,
    );
  }

  static Future<void> addDummyData() async {
    await isar.writeTxn(() async {
      await isar.persons.clear();
      await isar.persons.putAll([
        Person()
          ..cnie = 'L345604'
          ..firstNameAr = 'محمد'
          ..firstNameEn = 'Mohammed'
          ..lastNameAr = 'العلوي'
          ..lastNameEn = 'Alaoui'
          ..fatherName = 'عبد الله'
          ..motherName = 'فاطمة الزهراء'
          ..grandfatherPaternal = 'أحمد'
          ..grandfatherMaternal = 'إدريس'
          ..birthDate = DateTime(1990, 5, 15)
          ..birthLocation = 'الدار البيضاء'
          ..address = 'حي السلام، زنقة 5، رقم 23'
          ..voterCircle = '13'
          ..voterNumber = '412'
          ..idcs = '9876543210',
        Person()
          ..cnie = 'L567890'
          ..firstNameAr = 'فاطمة'
          ..firstNameEn = 'Fatima'
          ..lastNameAr = 'الإدريسي'
          ..lastNameEn = 'Idrissi'
          ..fatherName = 'محمد'
          ..motherName = 'خديجة'
          ..grandfatherPaternal = 'عمر'
          ..grandfatherMaternal = 'حسن'
          ..birthDate = DateTime(1945, 8, 20)
          ..birthLocation = 'فاس'
          ..address = 'حي الرياض، شارع النصر، رقم 45'
          ..voterCircle = '2'
          ..voterNumber = '456'
          ..idcs = '4567785766',
        Person()
          ..cnie = 'L123456'
          ..firstNameAr = 'أحمد'
          ..firstNameEn = 'Ahmed'
          ..lastNameAr = 'بنعلي'
          ..lastNameEn = 'Ben Ali'
          ..fatherName = 'يوسف'
          ..motherName = 'مريم'
          ..grandfatherPaternal = 'علي'
          ..grandfatherMaternal = 'سعيد'
          ..birthDate = DateTime(2000, 3, 10)
          ..birthLocation = 'طنجة'
          ..address = 'حي المنزه، زنقة الياسمين، رقم 12'
          ..voterCircle = '7'
          ..voterNumber = '789'
          ..idcs = '5379880987',
      ]);
    });
  }
}
