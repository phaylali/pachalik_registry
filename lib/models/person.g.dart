// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPersonCollection on Isar {
  IsarCollection<Person> get persons => this.collection();
}

const PersonSchema = CollectionSchema(
  name: r'Person',
  id: 7854610480646705599,
  properties: {
    r'address': PropertySchema(
      id: 0,
      name: r'address',
      type: IsarType.string,
    ),
    r'age': PropertySchema(
      id: 1,
      name: r'age',
      type: IsarType.long,
    ),
    r'attachmentIds': PropertySchema(
      id: 2,
      name: r'attachmentIds',
      type: IsarType.stringList,
    ),
    r'birthDate': PropertySchema(
      id: 3,
      name: r'birthDate',
      type: IsarType.dateTime,
    ),
    r'birthLocation': PropertySchema(
      id: 4,
      name: r'birthLocation',
      type: IsarType.string,
    ),
    r'cnie': PropertySchema(
      id: 5,
      name: r'cnie',
      type: IsarType.string,
    ),
    r'fatherName': PropertySchema(
      id: 6,
      name: r'fatherName',
      type: IsarType.string,
    ),
    r'firstNameAr': PropertySchema(
      id: 7,
      name: r'firstNameAr',
      type: IsarType.string,
    ),
    r'firstNameEn': PropertySchema(
      id: 8,
      name: r'firstNameEn',
      type: IsarType.string,
    ),
    r'grandfatherMaternal': PropertySchema(
      id: 9,
      name: r'grandfatherMaternal',
      type: IsarType.string,
    ),
    r'grandfatherPaternal': PropertySchema(
      id: 10,
      name: r'grandfatherPaternal',
      type: IsarType.string,
    ),
    r'idcs': PropertySchema(
      id: 11,
      name: r'idcs',
      type: IsarType.string,
    ),
    r'lastNameAr': PropertySchema(
      id: 12,
      name: r'lastNameAr',
      type: IsarType.string,
    ),
    r'lastNameEn': PropertySchema(
      id: 13,
      name: r'lastNameEn',
      type: IsarType.string,
    ),
    r'motherName': PropertySchema(
      id: 14,
      name: r'motherName',
      type: IsarType.string,
    ),
    r'voterCircle': PropertySchema(
      id: 15,
      name: r'voterCircle',
      type: IsarType.string,
    ),
    r'voterNumber': PropertySchema(
      id: 16,
      name: r'voterNumber',
      type: IsarType.string,
    )
  },
  estimateSize: _personEstimateSize,
  serialize: _personSerialize,
  deserialize: _personDeserialize,
  deserializeProp: _personDeserializeProp,
  idName: r'id',
  indexes: {
    r'cnie': IndexSchema(
      id: 7167294232869756830,
      name: r'cnie',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'cnie',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'firstNameAr': IndexSchema(
      id: 5883994147386594538,
      name: r'firstNameAr',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'firstNameAr',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'lastNameAr': IndexSchema(
      id: 707446437258429011,
      name: r'lastNameAr',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'lastNameAr',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'firstNameEn': IndexSchema(
      id: 8033880651857797546,
      name: r'firstNameEn',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'firstNameEn',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'lastNameEn': IndexSchema(
      id: 8120354076243768321,
      name: r'lastNameEn',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'lastNameEn',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'voterCircle': IndexSchema(
      id: 8780443508925590300,
      name: r'voterCircle',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'voterCircle',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'voterNumber': IndexSchema(
      id: 6398312709522592449,
      name: r'voterNumber',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'voterNumber',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'idcs': IndexSchema(
      id: -6929346372836020931,
      name: r'idcs',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'idcs',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _personGetId,
  getLinks: _personGetLinks,
  attach: _personAttach,
  version: '3.1.0+1',
);

int _personEstimateSize(
  Person object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.address;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.attachmentIds;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.birthLocation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.cnie.length * 3;
  {
    final value = object.fatherName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.firstNameAr.length * 3;
  {
    final value = object.firstNameEn;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.grandfatherMaternal;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.grandfatherPaternal;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idcs;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.lastNameAr.length * 3;
  {
    final value = object.lastNameEn;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.motherName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.voterCircle.length * 3;
  bytesCount += 3 + object.voterNumber.length * 3;
  return bytesCount;
}

void _personSerialize(
  Person object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.address);
  writer.writeLong(offsets[1], object.age);
  writer.writeStringList(offsets[2], object.attachmentIds);
  writer.writeDateTime(offsets[3], object.birthDate);
  writer.writeString(offsets[4], object.birthLocation);
  writer.writeString(offsets[5], object.cnie);
  writer.writeString(offsets[6], object.fatherName);
  writer.writeString(offsets[7], object.firstNameAr);
  writer.writeString(offsets[8], object.firstNameEn);
  writer.writeString(offsets[9], object.grandfatherMaternal);
  writer.writeString(offsets[10], object.grandfatherPaternal);
  writer.writeString(offsets[11], object.idcs);
  writer.writeString(offsets[12], object.lastNameAr);
  writer.writeString(offsets[13], object.lastNameEn);
  writer.writeString(offsets[14], object.motherName);
  writer.writeString(offsets[15], object.voterCircle);
  writer.writeString(offsets[16], object.voterNumber);
}

Person _personDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Person();
  object.address = reader.readStringOrNull(offsets[0]);
  object.attachmentIds = reader.readStringList(offsets[2]);
  object.birthDate = reader.readDateTimeOrNull(offsets[3]);
  object.birthLocation = reader.readStringOrNull(offsets[4]);
  object.cnie = reader.readString(offsets[5]);
  object.fatherName = reader.readStringOrNull(offsets[6]);
  object.firstNameAr = reader.readString(offsets[7]);
  object.firstNameEn = reader.readStringOrNull(offsets[8]);
  object.grandfatherMaternal = reader.readStringOrNull(offsets[9]);
  object.grandfatherPaternal = reader.readStringOrNull(offsets[10]);
  object.id = id;
  object.idcs = reader.readStringOrNull(offsets[11]);
  object.lastNameAr = reader.readString(offsets[12]);
  object.lastNameEn = reader.readStringOrNull(offsets[13]);
  object.motherName = reader.readStringOrNull(offsets[14]);
  object.voterCircle = reader.readString(offsets[15]);
  object.voterNumber = reader.readString(offsets[16]);
  return object;
}

P _personDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _personGetId(Person object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _personGetLinks(Person object) {
  return [];
}

void _personAttach(IsarCollection<dynamic> col, Id id, Person object) {
  object.id = id;
}

extension PersonQueryWhereSort on QueryBuilder<Person, Person, QWhere> {
  QueryBuilder<Person, Person, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Person, Person, QAfterWhere> anyCnie() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'cnie'),
      );
    });
  }

  QueryBuilder<Person, Person, QAfterWhere> anyFirstNameAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'firstNameAr'),
      );
    });
  }

  QueryBuilder<Person, Person, QAfterWhere> anyLastNameAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'lastNameAr'),
      );
    });
  }

  QueryBuilder<Person, Person, QAfterWhere> anyFirstNameEn() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'firstNameEn'),
      );
    });
  }

  QueryBuilder<Person, Person, QAfterWhere> anyLastNameEn() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'lastNameEn'),
      );
    });
  }

  QueryBuilder<Person, Person, QAfterWhere> anyVoterCircle() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'voterCircle'),
      );
    });
  }

  QueryBuilder<Person, Person, QAfterWhere> anyVoterNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'voterNumber'),
      );
    });
  }

  QueryBuilder<Person, Person, QAfterWhere> anyIdcs() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'idcs'),
      );
    });
  }
}

extension PersonQueryWhere on QueryBuilder<Person, Person, QWhereClause> {
  QueryBuilder<Person, Person, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> cnieEqualTo(String cnie) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'cnie',
        value: [cnie],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> cnieNotEqualTo(String cnie) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cnie',
              lower: [],
              upper: [cnie],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cnie',
              lower: [cnie],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cnie',
              lower: [cnie],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cnie',
              lower: [],
              upper: [cnie],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> cnieGreaterThan(
    String cnie, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'cnie',
        lower: [cnie],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> cnieLessThan(
    String cnie, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'cnie',
        lower: [],
        upper: [cnie],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> cnieBetween(
    String lowerCnie,
    String upperCnie, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'cnie',
        lower: [lowerCnie],
        includeLower: includeLower,
        upper: [upperCnie],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> cnieStartsWith(
      String CniePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'cnie',
        lower: [CniePrefix],
        upper: ['$CniePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> cnieIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'cnie',
        value: [''],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> cnieIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'cnie',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'cnie',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'cnie',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'cnie',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameArEqualTo(
      String firstNameAr) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'firstNameAr',
        value: [firstNameAr],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameArNotEqualTo(
      String firstNameAr) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstNameAr',
              lower: [],
              upper: [firstNameAr],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstNameAr',
              lower: [firstNameAr],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstNameAr',
              lower: [firstNameAr],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstNameAr',
              lower: [],
              upper: [firstNameAr],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameArGreaterThan(
    String firstNameAr, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firstNameAr',
        lower: [firstNameAr],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameArLessThan(
    String firstNameAr, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firstNameAr',
        lower: [],
        upper: [firstNameAr],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameArBetween(
    String lowerFirstNameAr,
    String upperFirstNameAr, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firstNameAr',
        lower: [lowerFirstNameAr],
        includeLower: includeLower,
        upper: [upperFirstNameAr],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameArStartsWith(
      String FirstNameArPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firstNameAr',
        lower: [FirstNameArPrefix],
        upper: ['$FirstNameArPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameArIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'firstNameAr',
        value: [''],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameArIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'firstNameAr',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'firstNameAr',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'firstNameAr',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'firstNameAr',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameArEqualTo(
      String lastNameAr) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'lastNameAr',
        value: [lastNameAr],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameArNotEqualTo(
      String lastNameAr) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastNameAr',
              lower: [],
              upper: [lastNameAr],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastNameAr',
              lower: [lastNameAr],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastNameAr',
              lower: [lastNameAr],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastNameAr',
              lower: [],
              upper: [lastNameAr],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameArGreaterThan(
    String lastNameAr, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastNameAr',
        lower: [lastNameAr],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameArLessThan(
    String lastNameAr, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastNameAr',
        lower: [],
        upper: [lastNameAr],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameArBetween(
    String lowerLastNameAr,
    String upperLastNameAr, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastNameAr',
        lower: [lowerLastNameAr],
        includeLower: includeLower,
        upper: [upperLastNameAr],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameArStartsWith(
      String LastNameArPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastNameAr',
        lower: [LastNameArPrefix],
        upper: ['$LastNameArPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameArIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'lastNameAr',
        value: [''],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameArIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'lastNameAr',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'lastNameAr',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'lastNameAr',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'lastNameAr',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameEnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'firstNameEn',
        value: [null],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameEnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firstNameEn',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameEnEqualTo(
      String? firstNameEn) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'firstNameEn',
        value: [firstNameEn],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameEnNotEqualTo(
      String? firstNameEn) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstNameEn',
              lower: [],
              upper: [firstNameEn],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstNameEn',
              lower: [firstNameEn],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstNameEn',
              lower: [firstNameEn],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstNameEn',
              lower: [],
              upper: [firstNameEn],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameEnGreaterThan(
    String? firstNameEn, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firstNameEn',
        lower: [firstNameEn],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameEnLessThan(
    String? firstNameEn, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firstNameEn',
        lower: [],
        upper: [firstNameEn],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameEnBetween(
    String? lowerFirstNameEn,
    String? upperFirstNameEn, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firstNameEn',
        lower: [lowerFirstNameEn],
        includeLower: includeLower,
        upper: [upperFirstNameEn],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameEnStartsWith(
      String FirstNameEnPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firstNameEn',
        lower: [FirstNameEnPrefix],
        upper: ['$FirstNameEnPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameEnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'firstNameEn',
        value: [''],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> firstNameEnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'firstNameEn',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'firstNameEn',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'firstNameEn',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'firstNameEn',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameEnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'lastNameEn',
        value: [null],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameEnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastNameEn',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameEnEqualTo(
      String? lastNameEn) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'lastNameEn',
        value: [lastNameEn],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameEnNotEqualTo(
      String? lastNameEn) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastNameEn',
              lower: [],
              upper: [lastNameEn],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastNameEn',
              lower: [lastNameEn],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastNameEn',
              lower: [lastNameEn],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastNameEn',
              lower: [],
              upper: [lastNameEn],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameEnGreaterThan(
    String? lastNameEn, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastNameEn',
        lower: [lastNameEn],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameEnLessThan(
    String? lastNameEn, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastNameEn',
        lower: [],
        upper: [lastNameEn],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameEnBetween(
    String? lowerLastNameEn,
    String? upperLastNameEn, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastNameEn',
        lower: [lowerLastNameEn],
        includeLower: includeLower,
        upper: [upperLastNameEn],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameEnStartsWith(
      String LastNameEnPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastNameEn',
        lower: [LastNameEnPrefix],
        upper: ['$LastNameEnPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameEnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'lastNameEn',
        value: [''],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> lastNameEnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'lastNameEn',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'lastNameEn',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'lastNameEn',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'lastNameEn',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterCircleEqualTo(
      String voterCircle) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'voterCircle',
        value: [voterCircle],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterCircleNotEqualTo(
      String voterCircle) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'voterCircle',
              lower: [],
              upper: [voterCircle],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'voterCircle',
              lower: [voterCircle],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'voterCircle',
              lower: [voterCircle],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'voterCircle',
              lower: [],
              upper: [voterCircle],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterCircleGreaterThan(
    String voterCircle, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'voterCircle',
        lower: [voterCircle],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterCircleLessThan(
    String voterCircle, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'voterCircle',
        lower: [],
        upper: [voterCircle],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterCircleBetween(
    String lowerVoterCircle,
    String upperVoterCircle, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'voterCircle',
        lower: [lowerVoterCircle],
        includeLower: includeLower,
        upper: [upperVoterCircle],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterCircleStartsWith(
      String VoterCirclePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'voterCircle',
        lower: [VoterCirclePrefix],
        upper: ['$VoterCirclePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterCircleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'voterCircle',
        value: [''],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterCircleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'voterCircle',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'voterCircle',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'voterCircle',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'voterCircle',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterNumberEqualTo(
      String voterNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'voterNumber',
        value: [voterNumber],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterNumberNotEqualTo(
      String voterNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'voterNumber',
              lower: [],
              upper: [voterNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'voterNumber',
              lower: [voterNumber],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'voterNumber',
              lower: [voterNumber],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'voterNumber',
              lower: [],
              upper: [voterNumber],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterNumberGreaterThan(
    String voterNumber, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'voterNumber',
        lower: [voterNumber],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterNumberLessThan(
    String voterNumber, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'voterNumber',
        lower: [],
        upper: [voterNumber],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterNumberBetween(
    String lowerVoterNumber,
    String upperVoterNumber, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'voterNumber',
        lower: [lowerVoterNumber],
        includeLower: includeLower,
        upper: [upperVoterNumber],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterNumberStartsWith(
      String VoterNumberPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'voterNumber',
        lower: [VoterNumberPrefix],
        upper: ['$VoterNumberPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'voterNumber',
        value: [''],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> voterNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'voterNumber',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'voterNumber',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'voterNumber',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'voterNumber',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idcsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'idcs',
        value: [null],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idcsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'idcs',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idcsEqualTo(String? idcs) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'idcs',
        value: [idcs],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idcsNotEqualTo(String? idcs) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'idcs',
              lower: [],
              upper: [idcs],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'idcs',
              lower: [idcs],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'idcs',
              lower: [idcs],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'idcs',
              lower: [],
              upper: [idcs],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idcsGreaterThan(
    String? idcs, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'idcs',
        lower: [idcs],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idcsLessThan(
    String? idcs, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'idcs',
        lower: [],
        upper: [idcs],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idcsBetween(
    String? lowerIdcs,
    String? upperIdcs, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'idcs',
        lower: [lowerIdcs],
        includeLower: includeLower,
        upper: [upperIdcs],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idcsStartsWith(
      String IdcsPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'idcs',
        lower: [IdcsPrefix],
        upper: ['$IdcsPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idcsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'idcs',
        value: [''],
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterWhereClause> idcsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'idcs',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'idcs',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'idcs',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'idcs',
              upper: [''],
            ));
      }
    });
  }
}

extension PersonQueryFilter on QueryBuilder<Person, Person, QFilterCondition> {
  QueryBuilder<Person, Person, QAfterFilterCondition> addressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> addressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> addressEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> addressGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> addressLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> addressBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> addressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> addressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> addressContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> addressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> addressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> addressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> ageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'age',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> ageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'age',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> ageEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'age',
        value: value,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> ageGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'age',
        value: value,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> ageLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'age',
        value: value,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> ageBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'age',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> attachmentIdsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachmentIds',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> attachmentIdsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachmentIds',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      attachmentIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      attachmentIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attachmentIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      attachmentIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attachmentIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      attachmentIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attachmentIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      attachmentIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'attachmentIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      attachmentIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'attachmentIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      attachmentIdsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attachmentIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      attachmentIdsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attachmentIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      attachmentIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentIds',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      attachmentIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attachmentIds',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      attachmentIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachmentIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> attachmentIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachmentIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      attachmentIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachmentIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      attachmentIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachmentIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      attachmentIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachmentIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      attachmentIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachmentIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'birthDate',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'birthDate',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'birthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'birthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'birthDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthLocationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'birthLocation',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthLocationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'birthLocation',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthLocationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthLocationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'birthLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthLocationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'birthLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthLocationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'birthLocation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthLocationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'birthLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthLocationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'birthLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthLocationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'birthLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthLocationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'birthLocation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> birthLocationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      birthLocationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'birthLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> cnieEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cnie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> cnieGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cnie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> cnieLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cnie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> cnieBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cnie',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> cnieStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cnie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> cnieEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cnie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> cnieContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cnie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> cnieMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cnie',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> cnieIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cnie',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> cnieIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cnie',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> fatherNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fatherName',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> fatherNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fatherName',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> fatherNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fatherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> fatherNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fatherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> fatherNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fatherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> fatherNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fatherName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> fatherNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fatherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> fatherNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fatherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> fatherNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fatherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> fatherNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fatherName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> fatherNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fatherName',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> fatherNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fatherName',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameArEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameArGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameArLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameArBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstNameAr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameArStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameArEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameArContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameArMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstNameAr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameArIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstNameAr',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameArIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstNameAr',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameEnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'firstNameEn',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameEnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'firstNameEn',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameEnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameEnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameEnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameEnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstNameEn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameEnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameEnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameEnContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameEnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstNameEn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameEnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstNameEn',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstNameEnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstNameEn',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherMaternalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'grandfatherMaternal',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherMaternalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'grandfatherMaternal',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherMaternalEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grandfatherMaternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherMaternalGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'grandfatherMaternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherMaternalLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'grandfatherMaternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherMaternalBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'grandfatherMaternal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherMaternalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'grandfatherMaternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherMaternalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'grandfatherMaternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherMaternalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'grandfatherMaternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherMaternalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'grandfatherMaternal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherMaternalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grandfatherMaternal',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherMaternalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'grandfatherMaternal',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherPaternalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'grandfatherPaternal',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherPaternalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'grandfatherPaternal',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherPaternalEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grandfatherPaternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherPaternalGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'grandfatherPaternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherPaternalLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'grandfatherPaternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherPaternalBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'grandfatherPaternal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherPaternalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'grandfatherPaternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherPaternalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'grandfatherPaternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherPaternalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'grandfatherPaternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherPaternalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'grandfatherPaternal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherPaternalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grandfatherPaternal',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition>
      grandfatherPaternalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'grandfatherPaternal',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idcsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idcs',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idcsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idcs',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idcsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idcs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idcsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idcs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idcsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idcs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idcsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idcs',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idcsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idcs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idcsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idcs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idcsContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idcs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idcsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idcs',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idcsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idcs',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> idcsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idcs',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameArEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameArGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameArLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameArBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastNameAr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameArStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameArEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameArContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameArMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastNameAr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameArIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastNameAr',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameArIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastNameAr',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameEnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastNameEn',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameEnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastNameEn',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameEnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameEnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameEnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameEnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastNameEn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameEnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameEnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameEnContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameEnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastNameEn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameEnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastNameEn',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastNameEnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastNameEn',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> motherNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'motherName',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> motherNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'motherName',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> motherNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'motherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> motherNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'motherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> motherNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'motherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> motherNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'motherName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> motherNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'motherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> motherNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'motherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> motherNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'motherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> motherNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'motherName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> motherNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'motherName',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> motherNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'motherName',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterCircleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'voterCircle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterCircleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'voterCircle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterCircleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'voterCircle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterCircleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'voterCircle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterCircleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'voterCircle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterCircleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'voterCircle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterCircleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'voterCircle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterCircleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'voterCircle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterCircleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'voterCircle',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterCircleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'voterCircle',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'voterNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'voterNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'voterNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'voterNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'voterNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'voterNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'voterNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'voterNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'voterNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> voterNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'voterNumber',
        value: '',
      ));
    });
  }
}

extension PersonQueryObject on QueryBuilder<Person, Person, QFilterCondition> {}

extension PersonQueryLinks on QueryBuilder<Person, Person, QFilterCondition> {}

extension PersonQuerySortBy on QueryBuilder<Person, Person, QSortBy> {
  QueryBuilder<Person, Person, QAfterSortBy> sortByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'age', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByAgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'age', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByBirthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByBirthLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthLocation', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByBirthLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthLocation', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByCnie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cnie', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByCnieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cnie', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByFatherName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatherName', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByFatherNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatherName', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByFirstNameAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstNameAr', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByFirstNameArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstNameAr', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByFirstNameEn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstNameEn', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByFirstNameEnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstNameEn', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByGrandfatherMaternal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandfatherMaternal', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByGrandfatherMaternalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandfatherMaternal', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByGrandfatherPaternal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandfatherPaternal', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByGrandfatherPaternalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandfatherPaternal', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByIdcs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idcs', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByIdcsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idcs', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByLastNameAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastNameAr', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByLastNameArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastNameAr', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByLastNameEn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastNameEn', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByLastNameEnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastNameEn', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByMotherName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motherName', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByMotherNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motherName', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByVoterCircle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voterCircle', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByVoterCircleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voterCircle', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByVoterNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voterNumber', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> sortByVoterNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voterNumber', Sort.desc);
    });
  }
}

extension PersonQuerySortThenBy on QueryBuilder<Person, Person, QSortThenBy> {
  QueryBuilder<Person, Person, QAfterSortBy> thenByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'age', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByAgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'age', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByBirthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByBirthLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthLocation', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByBirthLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthLocation', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByCnie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cnie', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByCnieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cnie', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByFatherName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatherName', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByFatherNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatherName', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByFirstNameAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstNameAr', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByFirstNameArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstNameAr', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByFirstNameEn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstNameEn', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByFirstNameEnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstNameEn', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByGrandfatherMaternal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandfatherMaternal', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByGrandfatherMaternalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandfatherMaternal', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByGrandfatherPaternal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandfatherPaternal', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByGrandfatherPaternalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandfatherPaternal', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByIdcs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idcs', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByIdcsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idcs', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByLastNameAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastNameAr', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByLastNameArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastNameAr', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByLastNameEn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastNameEn', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByLastNameEnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastNameEn', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByMotherName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motherName', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByMotherNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motherName', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByVoterCircle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voterCircle', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByVoterCircleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voterCircle', Sort.desc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByVoterNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voterNumber', Sort.asc);
    });
  }

  QueryBuilder<Person, Person, QAfterSortBy> thenByVoterNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voterNumber', Sort.desc);
    });
  }
}

extension PersonQueryWhereDistinct on QueryBuilder<Person, Person, QDistinct> {
  QueryBuilder<Person, Person, QDistinct> distinctByAddress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'age');
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByAttachmentIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attachmentIds');
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'birthDate');
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByBirthLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'birthLocation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByCnie(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cnie', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByFatherName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fatherName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByFirstNameAr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstNameAr', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByFirstNameEn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstNameEn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByGrandfatherMaternal(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'grandfatherMaternal',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByGrandfatherPaternal(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'grandfatherPaternal',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByIdcs(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idcs', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByLastNameAr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastNameAr', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByLastNameEn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastNameEn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByMotherName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'motherName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByVoterCircle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'voterCircle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Person, Person, QDistinct> distinctByVoterNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'voterNumber', caseSensitive: caseSensitive);
    });
  }
}

extension PersonQueryProperty on QueryBuilder<Person, Person, QQueryProperty> {
  QueryBuilder<Person, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Person, String?, QQueryOperations> addressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address');
    });
  }

  QueryBuilder<Person, int?, QQueryOperations> ageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'age');
    });
  }

  QueryBuilder<Person, List<String>?, QQueryOperations>
      attachmentIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attachmentIds');
    });
  }

  QueryBuilder<Person, DateTime?, QQueryOperations> birthDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'birthDate');
    });
  }

  QueryBuilder<Person, String?, QQueryOperations> birthLocationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'birthLocation');
    });
  }

  QueryBuilder<Person, String, QQueryOperations> cnieProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cnie');
    });
  }

  QueryBuilder<Person, String?, QQueryOperations> fatherNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fatherName');
    });
  }

  QueryBuilder<Person, String, QQueryOperations> firstNameArProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstNameAr');
    });
  }

  QueryBuilder<Person, String?, QQueryOperations> firstNameEnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstNameEn');
    });
  }

  QueryBuilder<Person, String?, QQueryOperations>
      grandfatherMaternalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'grandfatherMaternal');
    });
  }

  QueryBuilder<Person, String?, QQueryOperations>
      grandfatherPaternalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'grandfatherPaternal');
    });
  }

  QueryBuilder<Person, String?, QQueryOperations> idcsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idcs');
    });
  }

  QueryBuilder<Person, String, QQueryOperations> lastNameArProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastNameAr');
    });
  }

  QueryBuilder<Person, String?, QQueryOperations> lastNameEnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastNameEn');
    });
  }

  QueryBuilder<Person, String?, QQueryOperations> motherNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'motherName');
    });
  }

  QueryBuilder<Person, String, QQueryOperations> voterCircleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'voterCircle');
    });
  }

  QueryBuilder<Person, String, QQueryOperations> voterNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'voterNumber');
    });
  }
}
