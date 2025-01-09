
/*class Citizen {
  final int? id;
  final String cnie;
  final String firstNameAr;
  final String firstNameEn;
  final String lastNameAr;
  final String lastNameEn;
  final String fatherName;
  final String motherName;
  final String grandfatherPaternal;
  final String grandfatherMaternal;
  final DateTime birthDate;
  final String birthLocation;
  final String address;
  final String? voterCircle;
  final String? voterNumber;
  final String? idcs;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Citizen({
    this.id,
    required this.cnie,
    required this.firstNameAr,
    required this.firstNameEn,
    required this.lastNameAr,
    required this.lastNameEn,
    required this.fatherName,
    required this.motherName,
    required this.grandfatherPaternal,
    required this.grandfatherMaternal,
    required this.birthDate,
    required this.birthLocation,
    required this.address,
    this.voterCircle,
    this.voterNumber,
    this.idcs,
    this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cnie': cnie,
      'first_name_ar': firstNameAr,
      'first_name_en': firstNameEn,
      'last_name_ar': lastNameAr,
      'last_name_en': lastNameEn,
      'father_name': fatherName,
      'mother_name': motherName,
      'grandfather_paternal': grandfatherPaternal,
      'grandfather_maternal': grandfatherMaternal,
      'birth_date': birthDate.toIso8601String(),
      'birth_location': birthLocation,
      'address': address,
      'voter_circle': voterCircle,
      'voter_number': voterNumber,
      'idcs': idcs,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }

  factory Citizen.fromMap(Map<String, dynamic> map) {
    return Citizen(
      id: map['id'],
      cnie: map['cnie'],
      firstNameAr: map['first_name_ar'],
      firstNameEn: map['first_name_en'],
      lastNameAr: map['last_name_ar'],
      lastNameEn: map['last_name_en'],
      fatherName: map['father_name'],
      motherName: map['mother_name'],
      grandfatherPaternal: map['grandfather_paternal'],
      grandfatherMaternal: map['grandfather_maternal'],
      birthDate: DateTime.parse(map['birth_date']),
      birthLocation: map['birth_location'],
      address: map['address'],
      voterCircle: map['voter_circle'],
      voterNumber: map['voter_number'],
      idcs: map['idcs'],
      createdAt: map['created_at'] != null ? DateTime.parse(map['created_at']) : null,
      updatedAt: map['updated_at'] != null ? DateTime.parse(map['updated_at']) : null,
    );
  }

  @override
  String toString() {
    return 'Citizen(id: $id, cnie: $cnie, firstNameAr: $firstNameAr)';
  }
}*/
