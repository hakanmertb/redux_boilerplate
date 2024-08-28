//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegisterDTO {
    /// Returns a new [RegisterDTO] instance.
  RegisterDTO(
    { required this.firstName,
    required this.lastName,
    required this.usernameType,
    this.email,
    this.phoneNumber,
    required this.password, }
  );

  String firstName;

  String lastName;

  String usernameType;

  String? email;

  String? phoneNumber;

  String password;



  @override
  bool operator ==(Object other) => identical(this, other) || other is RegisterDTO&&
    other.firstName == firstName&&
    other.lastName == lastName&&
    other.usernameType == usernameType&&
    other.email == email&&
    other.phoneNumber == phoneNumber&&
    other.password == password;

  @override
  int get hashCode => 
    // ignore: unnecessary_parenthesis
    (firstName.hashCode) +
    (lastName.hashCode) +
    (usernameType.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
    (password.hashCode);

  @override
  String toString() => 'RegisterDTO[firstName=$firstName, lastName=$lastName, usernameType=$usernameType, email=$email, phoneNumber=$phoneNumber, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'firstName'] = this.firstName;
      json[r'lastName'] = this.lastName;
      json[r'usernameType'] = this.usernameType;
    if (this.email != null) {
      json[r'email'] = this.email;
    }
    if (this.phoneNumber != null) {
      json[r'phoneNumber'] = this.phoneNumber;
    }
      json[r'password'] = this.password;
    return json;
  }

  /// Returns a new [RegisterDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegisterDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegisterDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegisterDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegisterDTO(
        firstName: mapValueOfType<String>(json, r'firstName')!,
        lastName: mapValueOfType<String>(json, r'lastName')!,
        usernameType: mapValueOfType<String>(json, r'usernameType')!,
        email: mapValueOfType<String>(json, r'email'),
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber'),
        password: mapValueOfType<String>(json, r'password')!,
      );
    }
    return null;
  }

  static List<RegisterDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegisterDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegisterDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegisterDTO> mapFromJson(dynamic json) {
    final map = <String, RegisterDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegisterDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegisterDTO-objects as value to a dart map
  static Map<String, List<RegisterDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegisterDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegisterDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'firstName',
    'lastName',
    'usernameType',
    'password',
  };
}

extension RegisterDTOJsonUtils on RegisterDTO{
static List<RegisterDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegisterDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegisterDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}
