//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RunServiceRequestDTO {
  RunServiceRequestDTO(  {  required this.serviceName,    required this.functionName } );
  String serviceName;

  String functionName;



  @override
  bool operator ==(Object other) => identical(this, other) || other is RunServiceRequestDTO&&
    other.serviceName == serviceName&&
    other.functionName == functionName;

  @override
  int get hashCode => 
    // ignore: unnecessary_parenthesis
    (serviceName.hashCode) +
    (functionName.hashCode);

  @override
  String toString() => 'RunServiceRequestDTO[serviceName=$serviceName, functionName=$functionName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'serviceName'] = this.serviceName;
      json[r'functionName'] = this.functionName;
    return json;
  }

  /// Returns a new [RunServiceRequestDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunServiceRequestDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RunServiceRequestDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RunServiceRequestDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunServiceRequestDTO(
        serviceName: mapValueOfType<String>(json, r'serviceName')!,
        functionName: mapValueOfType<String>(json, r'functionName')!,
      );
    }
    return null;
  }

  static List<RunServiceRequestDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunServiceRequestDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunServiceRequestDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunServiceRequestDTO> mapFromJson(dynamic json) {
    final map = <String, RunServiceRequestDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunServiceRequestDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunServiceRequestDTO-objects as value to a dart map
  static Map<String, List<RunServiceRequestDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RunServiceRequestDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunServiceRequestDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'serviceName',
    'functionName',
  };
}

extension RunServiceRequestDTOJsonUtils on RunServiceRequestDTO{
static List<RunServiceRequestDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunServiceRequestDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunServiceRequestDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}
