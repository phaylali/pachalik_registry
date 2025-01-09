import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'dummydata.dart';

class DatabaseService {
  static Database? _database;

  static Future<void> initialize() async {
    if (_database != null) return;

    String path = join(await getDatabasesPath(), 'pachalik_registry.db');
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        // Create tables
        await db.execute('''
          CREATE TABLE citizens (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cnie TEXT UNIQUE NOT NULL,
    first_name_ar TEXT NOT NULL,
    first_name_en TEXT NOT NULL,
    last_name_ar TEXT NOT NULL,
    last_name_en TEXT NOT NULL,
    gender_ar TEXT,
    gender_en TEXT,
    marital_status_ar TEXT,
    marital_status_en TEXT,
    father_name_ar TEXT,
    father_name_en TEXT,
    father_cnie TEXT,
    mother_cnie TEXT,
    mother_name_ar TEXT,
    mother_name_en TEXT,
    grandfather_paternal_ar TEXT,
    grandfather_paternal_en TEXT,
    grandfather_maternal_ar TEXT,
    grandfather_maternal_en TEXT,
    grandmother_paternal_ar TEXT,
    grandmother_paternal_en TEXT,
    grandmother_maternal_ar TEXT,
    grandmother_maternal_en TEXT,
    birth_date TEXT NOT NULL,
    birth_location_ar TEXT,
    birth_location_en TEXT,
    address_ar TEXT,
    address_en TEXT,
    voter_circle TEXT,
    voter_number TEXT,
    idcs TEXT,
    civil_registry_number TEXT,
    political_affiliation_ar TEXT,
    political_affiliation_en TEXT,
    job_ar TEXT,
    job_en TEXT,
    nationality_ar TEXT,
    nationality_en TEXT,
    second_nationality_ar TEXT,
    second_nationality_en TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
          )
        ''');
        await db.execute('CREATE INDEX idx_cnie ON citizens(cnie)');
        await db.execute(
            'CREATE INDEX idx_names ON citizens(first_name_ar, last_name_ar, first_name_en, last_name_en)');
        await db.execute('''
  CREATE TABLE comments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER NOT NULL,
    text TEXT NOT NULL,
    created_at TEXT NOT NULL,
    is_rtl INTEGER NOT NULL,
    FOREIGN KEY (person_id) REFERENCES citizens (id)
  )
''');
      },
    );
  }

  static Future<List<Map<String, dynamic>>> searchCitizens(String query) async {
    return await _database!.query(
      'citizens',
      where: '''
      cnie LIKE ? OR 
      first_name_ar LIKE ? OR 
      first_name_en LIKE ? OR 
      last_name_ar LIKE ? OR 
      last_name_en LIKE ? OR 
      voter_number LIKE ?
    ''',
      whereArgs: [
        '%$query%',
        '%$query%',
        '%$query%',
        '%$query%',
        '%$query%',
        '%$query%',
      ],
    );
  }

  static Future<void> addCitizen(Map<String, dynamic> citizen) async {
    await _database!.insert(
      'citizens',
      citizen,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<Map<String, dynamic>?> getCitizenById(int id) async {
    final List<Map<String, dynamic>> results = await _database!.query(
      'citizens',
      where: 'id = ?',
      whereArgs: [id],
      limit: 1,
    );

    if (results.isEmpty) {
      return null;
    }

    return results.first;
  }

  static Future<Map<String, int>> getVoterStatistics() async {
    final List<Map<String, dynamic>> results = await _database!.rawQuery('''
    SELECT 
      COUNT(*) as total,
      COUNT(CASE WHEN voter_number IS NOT NULL THEN 1 END) as registered,
      COUNT(CASE WHEN voter_number IS NULL THEN 1 END) as unregistered
    FROM citizens
  ''');

    return {
      'total': results[0]['total'] as int,
      'registered': results[0]['registered'] as int,
      'unregistered': results[0]['unregistered'] as int,
    };
  }

  static Future<List<Map<String, dynamic>>> getComments(int personId) async {
    return await _database!.query(
      'comments',
      where: 'person_id = ?',
      whereArgs: [personId],
      orderBy: 'created_at DESC',
    );
  }

  static Future<void> deleteComment(int id) async {
    await _database!.delete(
      'comments',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  static Future<void> addComment(Map<String, dynamic> comment) async {
    await _database!.insert('comments', comment);
  }

  static Future<List<Map<String, dynamic>>> getVoterCircleStatistics() async {
    return await _database!.rawQuery('''
    SELECT 
      CAST(voter_circle AS INTEGER) as circle,
      COUNT(*) as count
    FROM citizens
    WHERE voter_circle IS NOT NULL
    GROUP BY voter_circle
    ORDER BY circle ASC
    LIMIT 12
  ''');
  }

  static Future<void> clearDatabase() async {
    await _database!.delete('citizens');
    await _database!.delete('comments');
  }

  static Future<void> addDummyData() async {
    for (var person in dummyData) {
      await _database!.insert('citizens', person,
          conflictAlgorithm: ConflictAlgorithm.ignore);
    }
  }
}
