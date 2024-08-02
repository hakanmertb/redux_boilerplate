//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EcmTransactionWithRelations {
  /// Returns a new [EcmTransactionWithRelations] instance.
  EcmTransactionWithRelations({
    required this.id,
    required this.userId,
    required this.provider,
    required this.amount,
    required this.currency,
    required this.paymentDate,
    this.providerResponse,
    this.description,
    this.createdDate,
    this.createdBy,
    this.createdById,
    this.updatedDate,
    this.updatedBy,
    this.updatedById,
    this.deletedDate,
    this.deletedBy,
    this.deletedById,
    this.isDeleted,
    this.orderId,
    this.order,
    this.foreignKey,
  });

  String id;

  String userId;

  String provider;

  num amount;

  String currency;

  DateTime paymentDate;

  Object? providerResponse;

  String? description;

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
  String? orderId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EcmOrderWithRelations? order;

  Object? foreignKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EcmTransactionWithRelations &&
    other.id == id &&
    other.userId == userId &&
    other.provider == provider &&
    other.amount == amount &&
    other.currency == currency &&
    other.paymentDate == paymentDate &&
    other.providerResponse == providerResponse &&
    other.description == description &&
    other.createdDate == createdDate &&
    other.createdBy == createdBy &&
    other.createdById == createdById &&
    other.updatedDate == updatedDate &&
    other.updatedBy == updatedBy &&
    other.updatedById == updatedById &&
    other.deletedDate == deletedDate &&
    other.deletedBy == deletedBy &&
    other.deletedById == deletedById &&
    other.isDeleted == isDeleted &&
    other.orderId == orderId &&
    other.order == order &&
    other.foreignKey == foreignKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (provider.hashCode) +
    (amount.hashCode) +
    (currency.hashCode) +
    (paymentDate.hashCode) +
    (providerResponse == null ? 0 : providerResponse!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
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
    (orderId == null ? 0 : orderId!.hashCode) +
    (order == null ? 0 : order!.hashCode) +
    (foreignKey == null ? 0 : foreignKey!.hashCode);

  @override
  String toString() => 'EcmTransactionWithRelations[id=$id, userId=$userId, provider=$provider, amount=$amount, currency=$currency, paymentDate=$paymentDate, providerResponse=$providerResponse, description=$description, createdDate=$createdDate, createdBy=$createdBy, createdById=$createdById, updatedDate=$updatedDate, updatedBy=$updatedBy, updatedById=$updatedById, deletedDate=$deletedDate, deletedBy=$deletedBy, deletedById=$deletedById, isDeleted=$isDeleted, orderId=$orderId, order=$order, foreignKey=$foreignKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'provider'] = this.provider;
      json[r'amount'] = this.amount;
      json[r'currency'] = this.currency;
      json[r'paymentDate'] = this.paymentDate.toUtc().toIso8601String();
    if (this.providerResponse != null) {
      json[r'providerResponse'] = this.providerResponse;
    } else {
      json[r'providerResponse'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
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
    if (this.orderId != null) {
      json[r'orderId'] = this.orderId;
    } else {
      json[r'orderId'] = null;
    }
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    if (this.foreignKey != null) {
      json[r'foreignKey'] = this.foreignKey;
    } else {
      json[r'foreignKey'] = null;
    }
    return json;
  }

  /// Returns a new [EcmTransactionWithRelations] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EcmTransactionWithRelations? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EcmTransactionWithRelations[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EcmTransactionWithRelations[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EcmTransactionWithRelations(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        provider: mapValueOfType<String>(json, r'provider')!,
        amount: num.parse('${json[r'amount']}'),
        currency: mapValueOfType<String>(json, r'currency')!,
        paymentDate: mapDateTime(json, r'paymentDate', r'')!,
        providerResponse: mapValueOfType<Object>(json, r'providerResponse'),
        description: mapValueOfType<String>(json, r'description'),
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
        orderId: mapValueOfType<String>(json, r'orderId'),
        order: EcmOrderWithRelations.fromJson(json[r'order']),
        foreignKey: mapValueOfType<Object>(json, r'foreignKey'),
      );
    }
    return null;
  }

  static List<EcmTransactionWithRelations> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmTransactionWithRelations>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmTransactionWithRelations.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EcmTransactionWithRelations> mapFromJson(dynamic json) {
    final map = <String, EcmTransactionWithRelations>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EcmTransactionWithRelations.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EcmTransactionWithRelations-objects as value to a dart map
  static Map<String, List<EcmTransactionWithRelations>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EcmTransactionWithRelations>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EcmTransactionWithRelations.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'provider',
    'amount',
    'currency',
    'paymentDate',
  };
}

