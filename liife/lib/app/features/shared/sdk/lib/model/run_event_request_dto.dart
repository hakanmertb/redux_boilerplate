//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RunEventRequestDTO {
    /// Returns a new [RunEventRequestDTO] instance.
  RunEventRequestDTO(
    { required this.name,
    this.payload, }
  );

  String name;

  Object? payload;



  @override
  bool operator ==(Object other) => identical(this, other) || other is RunEventRequestDTO&&
    other.name == name&&
    other.payload == payload;

  @override
  int get hashCode => 
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (payload == null ? 0 : payload!.hashCode);

  @override
  String toString() => 'RunEventRequestDTO[name=$name, payload=$payload]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.payload != null) {
      json[r'payload'] = this.payload;
    }
    return json;
  }

  /// Returns a new [RunEventRequestDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunEventRequestDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RunEventRequestDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RunEventRequestDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunEventRequestDTO(
        name: mapValueOfType<String>(json, r'name')!,
        payload: mapValueOfType<Object>(json, r'payload'),
      );
    }
    return null;
  }

  static List<RunEventRequestDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunEventRequestDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunEventRequestDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunEventRequestDTO> mapFromJson(dynamic json) {
    final map = <String, RunEventRequestDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunEventRequestDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunEventRequestDTO-objects as value to a dart map
  static Map<String, List<RunEventRequestDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RunEventRequestDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunEventRequestDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

extension RunEventRequestDTOJsonUtils on RunEventRequestDTO{
static List<RunEventRequestDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunEventRequestDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunEventRequestDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}
