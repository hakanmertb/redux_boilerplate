//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EcmProductWithRelations {
  EcmProductWithRelations(  {  required this.id,    required this.name,     this.description,    required this.sku,    required this.thumbnailImageURL,    required this.imageURLs,    required this.price,     this.manufacturer,     this.supplier,    required this.stockQuantity,    required this.createdDate,    required this.createdBy,    required this.createdById,     this.updatedDate,     this.updatedBy,     this.updatedById,     this.deletedDate,     this.deletedBy,     this.deletedById,    required this.isDeleted } );
  String id;

  String name;

  String? description;

  String sku;

  String thumbnailImageURL;

  List<String> imageURLs;

  num price;

  String? manufacturer;

  String? supplier;

  num stockQuantity;

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
  bool operator ==(Object other) => identical(this, other) || other is EcmProductWithRelations&&
    other.id == id&&
    other.name == name&&
    other.description == description&&
    other.sku == sku&&
    other.thumbnailImageURL == thumbnailImageURL&&
    _deepEquality.equals(other.imageURLs, imageURLs)&&
    other.price == price&&
    other.manufacturer == manufacturer&&
    other.supplier == supplier&&
    other.stockQuantity == stockQuantity&&
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
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (sku.hashCode) +
    (thumbnailImageURL.hashCode) +
    (imageURLs.hashCode) +
    (price.hashCode) +
    (manufacturer == null ? 0 : manufacturer!.hashCode) +
    (supplier == null ? 0 : supplier!.hashCode) +
    (stockQuantity.hashCode) +
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
  String toString() => 'EcmProductWithRelations[id=$id, name=$name, description=$description, sku=$sku, thumbnailImageURL=$thumbnailImageURL, imageURLs=$imageURLs, price=$price, manufacturer=$manufacturer, supplier=$supplier, stockQuantity=$stockQuantity, createdDate=$createdDate, createdBy=$createdBy, createdById=$createdById, updatedDate=$updatedDate, updatedBy=$updatedBy, updatedById=$updatedById, deletedDate=$deletedDate, deletedBy=$deletedBy, deletedById=$deletedById, isDeleted=$isDeleted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'sku'] = this.sku;
      json[r'thumbnailImageURL'] = this.thumbnailImageURL;
      json[r'imageURLs'] = this.imageURLs;
      json[r'price'] = this.price;
    if (this.manufacturer != null) {
      json[r'manufacturer'] = this.manufacturer;
    } else {
      json[r'manufacturer'] = null;
    }
    if (this.supplier != null) {
      json[r'supplier'] = this.supplier;
    } else {
      json[r'supplier'] = null;
    }
      json[r'stockQuantity'] = this.stockQuantity;
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

  /// Returns a new [EcmProductWithRelations] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EcmProductWithRelations? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EcmProductWithRelations[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EcmProductWithRelations[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EcmProductWithRelations(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        sku: mapValueOfType<String>(json, r'sku')!,
        thumbnailImageURL: mapValueOfType<String>(json, r'thumbnailImageURL')!,
        imageURLs: json[r'imageURLs'] is Iterable
            ? (json[r'imageURLs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        price: num.parse('${json[r'price']}'),
        manufacturer: mapValueOfType<String>(json, r'manufacturer'),
        supplier: mapValueOfType<String>(json, r'supplier'),
        stockQuantity: num.parse('${json[r'stockQuantity']}'),
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

  static List<EcmProductWithRelations> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmProductWithRelations>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmProductWithRelations.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EcmProductWithRelations> mapFromJson(dynamic json) {
    final map = <String, EcmProductWithRelations>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EcmProductWithRelations.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EcmProductWithRelations-objects as value to a dart map
  static Map<String, List<EcmProductWithRelations>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EcmProductWithRelations>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EcmProductWithRelations.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'sku',
    'thumbnailImageURL',
    'imageURLs',
    'price',
    'stockQuantity',
  };
}

extension EcmProductWithRelationsJsonUtils on EcmProductWithRelations{
static List<EcmProductWithRelations> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmProductWithRelations>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmProductWithRelations.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}
