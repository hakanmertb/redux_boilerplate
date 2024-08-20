//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EcmOrderWithRelations {
  EcmOrderWithRelations(  {  required this.id,    required this.userId,    required this.status,    required this.totalPrice,    required this.paymentStatus,    required this.currency,    required this.shippingAddress,    required this.billingAddress,     this.paymentDate,    required this.createdDate,    required this.createdBy,    required this.createdById,     this.updatedDate,     this.updatedBy,     this.updatedById,     this.deletedDate,     this.deletedBy,     this.deletedById,    required this.isDeleted,    required this.shoppingCartId,    required this.items,    required this.shoppingCart } );
  String id;

  String userId;

  String status;

  num totalPrice;

  String paymentStatus;

  String currency;

  String shippingAddress;

  String billingAddress;

  DateTime? paymentDate;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shoppingCartId;

  List<EcmOrderItemWithRelations> items;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EcmShoppingCartWithRelations? shoppingCart;



  @override
  bool operator ==(Object other) => identical(this, other) || other is EcmOrderWithRelations&&
    other.id == id&&
    other.userId == userId&&
    other.status == status&&
    other.totalPrice == totalPrice&&
    other.paymentStatus == paymentStatus&&
    other.currency == currency&&
    other.shippingAddress == shippingAddress&&
    other.billingAddress == billingAddress&&
    other.paymentDate == paymentDate&&
    other.createdDate == createdDate&&
    other.createdBy == createdBy&&
    other.createdById == createdById&&
    other.updatedDate == updatedDate&&
    other.updatedBy == updatedBy&&
    other.updatedById == updatedById&&
    other.deletedDate == deletedDate&&
    other.deletedBy == deletedBy&&
    other.deletedById == deletedById&&
    other.isDeleted == isDeleted&&
    other.shoppingCartId == shoppingCartId&&
    _deepEquality.equals(other.items, items)&&
    other.shoppingCart == shoppingCart;

  @override
  int get hashCode => 
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (status.hashCode) +
    (totalPrice.hashCode) +
    (paymentStatus.hashCode) +
    (currency.hashCode) +
    (shippingAddress.hashCode) +
    (billingAddress.hashCode) +
    (paymentDate == null ? 0 : paymentDate!.hashCode) +
    (createdDate == null ? 0 : createdDate!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (createdById == null ? 0 : createdById!.hashCode) +
    (updatedDate == null ? 0 : updatedDate!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode) +
    (updatedById == null ? 0 : updatedById!.hashCode) +
    (deletedDate == null ? 0 : deletedDate!.hashCode) +
    (deletedBy == null ? 0 : deletedBy!.hashCode) +
    (deletedById == null ? 0 : deletedById!.hashCode) +
    (isDeleted == null ? 0 : isDeleted!.hashCode) +
    (shoppingCartId == null ? 0 : shoppingCartId!.hashCode) +
    (items.hashCode) +
    (shoppingCart == null ? 0 : shoppingCart!.hashCode);

  @override
  String toString() => 'EcmOrderWithRelations[id=$id, userId=$userId, status=$status, totalPrice=$totalPrice, paymentStatus=$paymentStatus, currency=$currency, shippingAddress=$shippingAddress, billingAddress=$billingAddress, paymentDate=$paymentDate, createdDate=$createdDate, createdBy=$createdBy, createdById=$createdById, updatedDate=$updatedDate, updatedBy=$updatedBy, updatedById=$updatedById, deletedDate=$deletedDate, deletedBy=$deletedBy, deletedById=$deletedById, isDeleted=$isDeleted, shoppingCartId=$shoppingCartId, items=$items, shoppingCart=$shoppingCart]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'status'] = this.status;
      json[r'totalPrice'] = this.totalPrice;
      json[r'paymentStatus'] = this.paymentStatus;
      json[r'currency'] = this.currency;
      json[r'shippingAddress'] = this.shippingAddress;
      json[r'billingAddress'] = this.billingAddress;
    if (this.paymentDate != null) {
      json[r'paymentDate'] = this.paymentDate!.toUtc().toIso8601String();
    } else {
      json[r'paymentDate'] = null;
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
    if (this.shoppingCartId != null) {
      json[r'shoppingCartId'] = this.shoppingCartId;
    } else {
      json[r'shoppingCartId'] = null;
    }
      json[r'items'] = this.items;
    if (this.shoppingCart != null) {
      json[r'shoppingCart'] = this.shoppingCart;
    } else {
      json[r'shoppingCart'] = null;
    }
    return json;
  }

  /// Returns a new [EcmOrderWithRelations] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EcmOrderWithRelations? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EcmOrderWithRelations[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EcmOrderWithRelations[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EcmOrderWithRelations(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        status: mapValueOfType<String>(json, r'status')!,
        totalPrice: num.parse('${json[r'totalPrice']}'),
        paymentStatus: mapValueOfType<String>(json, r'paymentStatus')!,
        currency: mapValueOfType<String>(json, r'currency')!,
        shippingAddress: mapValueOfType<String>(json, r'shippingAddress')!,
        billingAddress: mapValueOfType<String>(json, r'billingAddress')!,
        paymentDate: mapDateTime(json, r'paymentDate', r''),
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
        shoppingCartId: mapValueOfType<String>(json, r'shoppingCartId'),
        items: EcmOrderItemWithRelationsJsonUtils.listFromJson(json[r'items']),
        shoppingCart: EcmShoppingCartWithRelations.fromJson(json[r'shoppingCart']),
      );
    }
    return null;
  }

  static List<EcmOrderWithRelations> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmOrderWithRelations>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmOrderWithRelations.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EcmOrderWithRelations> mapFromJson(dynamic json) {
    final map = <String, EcmOrderWithRelations>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EcmOrderWithRelations.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EcmOrderWithRelations-objects as value to a dart map
  static Map<String, List<EcmOrderWithRelations>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EcmOrderWithRelations>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EcmOrderWithRelations.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'status',
    'totalPrice',
    'paymentStatus',
    'currency',
    'shippingAddress',
    'billingAddress',
  };
}

extension EcmOrderWithRelationsJsonUtils on EcmOrderWithRelations{
static List<EcmOrderWithRelations> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmOrderWithRelations>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmOrderWithRelations.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}
