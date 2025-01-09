/*import '../models/citizen.dart';
import 'database_service.dart';

class CitizenRepository {
  Future<List<Citizen>> searchCitizens(String query) async {
    final results = await DatabaseService.searchCitizens(query);
    return results.map((map) => Citizen.fromMap(map)).toList();
  }
  
  Future<void> addCitizen(Citizen citizen) async {
    await DatabaseService.addCitizen(citizen.toMap());
  }
}*/
