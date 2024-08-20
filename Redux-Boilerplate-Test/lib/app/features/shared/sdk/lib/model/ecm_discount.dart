//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EcmDiscount {
  EcmDiscount(  {  required this.id,     this.description,    required this.type,    required this.value,    required this.startDate,    required this.endDate,    required this.minimumPurchaseAmount,    required this.applicableToSKUs,    required this.isActive,    required this.createdDate,    required this.createdBy,    required this.createdById,     this.updatedDate,     this.updatedBy,     this.updatedById,     this.deletedDate,     this.deletedBy,     this.deletedById,    required this.isDeleted } );
  String id;

  String? description;

  String type;

  num value;

  DateTime startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endDate;

  num minimumPurchaseAmount;

  List<String> applicableToSKUs;

  bool isActive;

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
  bool operator ==(Object other) => identical(this, other) || other is EcmDiscount&&
    other.id == id&&
    other.description == description&&
    other.type == type&&
    other.value == value&&
    other.startDate == startDate&&
    other.endDate == endDate&&
    other.minimumPurchaseAmount == minimumPurchaseAmount&&
    _deepEquality.equals(other.applicableToSKUs, applicableToSKUs)&&
    other.isActive == isActive&&
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
    (id.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (type.hashCode) +
    (value.hashCode) +
    (startDate.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (minimumPurchaseAmount.hashCode) +
    (applicableToSKUs.hashCode) +
    (isActive.hashCode) +
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
  String toString() => 'EcmDiscount[id=$id, description=$description, type=$type, value=$value, startDate=$startDate, endDate=$endDate, minimumPurchaseAmount=$minimumPurchaseAmount, applicableToSKUs=$applicableToSKUs, isActive=$isActive, createdDate=$createdDate, createdBy=$createdBy, createdById=$createdById, updatedDate=$updatedDate, updatedBy=$updatedBy, updatedById=$updatedById, deletedDate=$deletedDate, deletedBy=$deletedBy, deletedById=$deletedById, isDeleted=$isDeleted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'type'] = this.type;
      json[r'value'] = this.value;
      json[r'startDate'] = this.startDate.toUtc().toIso8601String();
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate!.toUtc().toIso8601String();
    } else {
      json[r'endDate'] = null;
    }
      json[r'minimumPurchaseAmount'] = this.minimumPurchaseAmount;
      json[r'applicableToSKUs'] = this.applicableToSKUs;
      json[r'isActive'] = this.isActive;
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

  /// Returns a new [EcmDiscount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EcmDiscount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EcmDiscount[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EcmDiscount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EcmDiscount(
        id: mapValueOfType<String>(json, r'id')!,
        description: mapValueOfType<String>(json, r'description'),
        type: mapValueOfType<String>(json, r'type')!,
        value: num.parse('${json[r'value']}'),
        startDate: mapDateTime(json, r'startDate', r'')!,
        endDate: mapDateTime(json, r'endDate', r''),
        minimumPurchaseAmount: num.parse('${json[r'minimumPurchaseAmount']}'),
        applicableToSKUs: json[r'applicableToSKUs'] is Iterable
            ? (json[r'applicableToSKUs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        isActive: mapValueOfType<bool>(json, r'isActive')!,
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

  static List<EcmDiscount> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmDiscount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmDiscount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EcmDiscount> mapFromJson(dynamic json) {
    final map = <String, EcmDiscount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EcmDiscount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EcmDiscount-objects as value to a dart map
  static Map<String, List<EcmDiscount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EcmDiscount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EcmDiscount.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'value',
    'startDate',
    'minimumPurchaseAmount',
    'applicableToSKUs',
    'isActive',
  };
}

extension EcmDiscountJsonUtils on EcmDiscount{
static List<EcmDiscount> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmDiscount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmDiscount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}
