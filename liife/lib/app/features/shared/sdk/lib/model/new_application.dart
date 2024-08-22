//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NewApplication {
  NewApplication(  {  required this.type,    required this.zipcode,    required this.gender,    required this.birthday,    required this.heightFeet,    required this.heightInch,    required this.weight,    required this.householdSize,    required this.qualifyingLifeEvent,    required this.smoking,    required this.houseHoldIncomeRange,    required this.healthConditions,    required this.pregnancy,    required this.sampleFieldName,    required this.createdDate,    required this.createdBy,    required this.createdById,     this.updatedDate,     this.updatedBy,     this.updatedById,     this.deletedDate,     this.deletedBy,     this.deletedById,    required this.isDeleted } );
  String type;

  String zipcode;

  String gender;

  DateTime birthday;

  num heightFeet;

  num heightInch;

  num weight;

  num householdSize;

  String qualifyingLifeEvent;

  bool smoking;

  String houseHoldIncomeRange;

  List<String> healthConditions;

  bool pregnancy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sampleFieldName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdById;

  DateTime? updatedDate;

  String? updatedBy;

  String? updatedById;

  DateTime? deletedDate;

  String? deletedBy;

  String? deletedById;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDeleted;



  @override
  bool operator ==(Object other) => identical(this, other) || other is NewApplication&&
    other.type == type&&
    other.zipcode == zipcode&&
    other.gender == gender&&
    other.birthday == birthday&&
    other.heightFeet == heightFeet&&
    other.heightInch == heightInch&&
    other.weight == weight&&
    other.householdSize == householdSize&&
    other.qualifyingLifeEvent == qualifyingLifeEvent&&
    other.smoking == smoking&&
    other.houseHoldIncomeRange == houseHoldIncomeRange&&
    _deepEquality.equals(other.healthConditions, healthConditions)&&
    other.pregnancy == pregnancy&&
    other.sampleFieldName == sampleFieldName&&
    other.createdDate == createdDate&&
    other.createdBy == createdBy&&
    other.createdById == createdById&&
    other.updatedDate == updatedDate&&
    other.updatedBy == updatedBy&&
    other.updatedById == updatedById&&
    other.deletedDate == deletedDate&&
    other.deletedBy == deletedBy&&
    other.deletedById == deletedById&&
    other.isDeleted == isDeleted;

  @override
  int get hashCode => 
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (zipcode.hashCode) +
    (gender.hashCode) +
    (birthday.hashCode) +
    (heightFeet.hashCode) +
    (heightInch.hashCode) +
    (weight.hashCode) +
    (householdSize.hashCode) +
    (qualifyingLifeEvent.hashCode) +
    (smoking.hashCode) +
    (houseHoldIncomeRange.hashCode) +
    (healthConditions.hashCode) +
    (pregnancy.hashCode) +
    (sampleFieldName == null ? 0 : sampleFieldName!.hashCode) +
    (createdDate == null ? 0 : createdDate!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (createdById == null ? 0 : createdById!.hashCode) +
    (updatedDate == null ? 0 : updatedDate!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode) +
    (updatedById == null ? 0 : updatedById!.hashCode) +
    (deletedDate == null ? 0 : deletedDate!.hashCode) +
    (deletedBy == null ? 0 : deletedBy!.hashCode) +
    (deletedById == null ? 0 : deletedById!.hashCode) +
    (isDeleted == null ? 0 : isDeleted!.hashCode);

  @override
  String toString() => 'NewApplication[type=$type, zipcode=$zipcode, gender=$gender, birthday=$birthday, heightFeet=$heightFeet, heightInch=$heightInch, weight=$weight, householdSize=$householdSize, qualifyingLifeEvent=$qualifyingLifeEvent, smoking=$smoking, houseHoldIncomeRange=$houseHoldIncomeRange, healthConditions=$healthConditions, pregnancy=$pregnancy, sampleFieldName=$sampleFieldName, createdDate=$createdDate, createdBy=$createdBy, createdById=$createdById, updatedDate=$updatedDate, updatedBy=$updatedBy, updatedById=$updatedById, deletedDate=$deletedDate, deletedBy=$deletedBy, deletedById=$deletedById, isDeleted=$isDeleted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'zipcode'] = this.zipcode;
      json[r'gender'] = this.gender;
      json[r'birthday'] = this.birthday.toUtc().toIso8601String();
      json[r'heightFeet'] = this.heightFeet;
      json[r'heightInch'] = this.heightInch;
      json[r'weight'] = this.weight;
      json[r'householdSize'] = this.householdSize;
      json[r'qualifyingLifeEvent'] = this.qualifyingLifeEvent;
      json[r'smoking'] = this.smoking;
      json[r'houseHoldIncomeRange'] = this.houseHoldIncomeRange;
      json[r'healthConditions'] = this.healthConditions;
      json[r'pregnancy'] = this.pregnancy;
    if (this.sampleFieldName != null) {
      json[r'sampleFieldName'] = this.sampleFieldName;
    } else {
      json[r'sampleFieldName'] = null;
    }
    if (this.createdDate != null) {
      json[r'createdDate'] = this.createdDate!.toUtc().toIso8601String();
    } else {
      json[r'createdDate'] = null;
    }
    if (this.createdBy != null) {
      json[r'createdBy'] = this.createdBy;
    } else {
      json[r'createdBy'] = null;
    }
    if (this.createdById != null) {
      json[r'createdById'] = this.createdById;
    } else {
      json[r'createdById'] = null;
    }
    if (this.updatedDate != null) {
      json[r'updatedDate'] = this.updatedDate!.toUtc().toIso8601String();
    } else {
      json[r'updatedDate'] = null;
    }
    if (this.updatedBy != null) {
      json[r'updatedBy'] = this.updatedBy;
    } else {
      json[r'updatedBy'] = null;
    }
    if (this.updatedById != null) {
      json[r'updatedById'] = this.updatedById;
    } else {
      json[r'updatedById'] = null;
    }
    if (this.deletedDate != null) {
      json[r'deletedDate'] = this.deletedDate!.toUtc().toIso8601String();
    } else {
      json[r'deletedDate'] = null;
    }
    if (this.deletedBy != null) {
      json[r'deletedBy'] = this.deletedBy;
    } else {
      json[r'deletedBy'] = null;
    }
    if (this.deletedById != null) {
      json[r'deletedById'] = this.deletedById;
    } else {
      json[r'deletedById'] = null;
    }
    if (this.isDeleted != null) {
      json[r'isDeleted'] = this.isDeleted;
    } else {
      json[r'isDeleted'] = null;
    }
    return json;
  }

  /// Returns a new [NewApplication] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewApplication? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewApplication[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewApplication[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewApplication(
        type: mapValueOfType<String>(json, r'type')!,
        zipcode: mapValueOfType<String>(json, r'zipcode')!,
        gender: mapValueOfType<String>(json, r'gender')!,
        birthday: mapDateTime(json, r'birthday', r'')!,
        heightFeet: num.parse('${json[r'heightFeet']}'),
        heightInch: num.parse('${json[r'heightInch']}'),
        weight: num.parse('${json[r'weight']}'),
        householdSize: num.parse('${json[r'householdSize']}'),
        qualifyingLifeEvent: mapValueOfType<String>(json, r'qualifyingLifeEvent')!,
        smoking: mapValueOfType<bool>(json, r'smoking')!,
        houseHoldIncomeRange: mapValueOfType<String>(json, r'houseHoldIncomeRange')!,
        healthConditions: json[r'healthConditions'] is Iterable
            ? (json[r'healthConditions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        pregnancy: mapValueOfType<bool>(json, r'pregnancy')!,
        sampleFieldName: mapValueOfType<String>(json, r'sampleFieldName'),
        createdDate: mapDateTime(json, r'createdDate', r''),
        createdBy: mapValueOfType<String>(json, r'createdBy'),
        createdById: mapValueOfType<String>(json, r'createdById'),
        updatedDate: mapDateTime(json, r'updatedDate', r''),
        updatedBy: mapValueOfType<String>(json, r'updatedBy'),
        updatedById: mapValueOfType<String>(json, r'updatedById'),
        deletedDate: mapDateTime(json, r'deletedDate', r''),
        deletedBy: mapValueOfType<String>(json, r'deletedBy'),
        deletedById: mapValueOfType<String>(json, r'deletedById'),
        isDeleted: mapValueOfType<bool>(json, r'isDeleted'),
      );
    }
    return null;
  }

  static List<NewApplication> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewApplication>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewApplication.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewApplication> mapFromJson(dynamic json) {
    final map = <String, NewApplication>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewApplication.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewApplication-objects as value to a dart map
  static Map<String, List<NewApplication>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewApplication>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewApplication.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'zipcode',
    'gender',
    'birthday',
    'heightFeet',
    'heightInch',
    'weight',
    'householdSize',
    'qualifyingLifeEvent',
    'smoking',
    'houseHoldIncomeRange',
    'healthConditions',
    'pregnancy',
  };
}

extension NewApplicationJsonUtils on NewApplication{
static List<NewApplication> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewApplication>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewApplication.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}
