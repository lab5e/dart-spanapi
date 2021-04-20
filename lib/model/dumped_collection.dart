//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class DumpedCollection {
  /// Returns a new [DumpedCollection] instance.
  DumpedCollection({
    this.collection,
    this.devices = const [],
    this.outputs = const [],
  });

  Collection collection;

  List<DumpedDevice> devices;

  List<Output> outputs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DumpedCollection &&
     other.collection == collection &&
     other.devices == devices &&
     other.outputs == outputs;

  @override
  int get hashCode =>
    (collection == null ? 0 : collection.hashCode) +
    (devices == null ? 0 : devices.hashCode) +
    (outputs == null ? 0 : outputs.hashCode);

  @override
  String toString() => 'DumpedCollection[collection=$collection, devices=$devices, outputs=$outputs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (collection != null) {
      json[r'collection'] = collection;
    }
    if (devices != null) {
      json[r'devices'] = devices;
    }
    if (outputs != null) {
      json[r'outputs'] = outputs;
    }
    return json;
  }

  /// Returns a new [DumpedCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DumpedCollection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DumpedCollection(
        collection: Collection.fromJson(json[r'collection']),
        devices: DumpedDevice.listFromJson(json[r'devices']),
        outputs: Output.listFromJson(json[r'outputs']),
    );

  static List<DumpedCollection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DumpedCollection>[]
      : json.map((v) => DumpedCollection.fromJson(v)).toList(growable: true == growable);

  static Map<String, DumpedCollection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DumpedCollection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DumpedCollection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DumpedCollection-objects as value to a dart map
  static Map<String, List<DumpedCollection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DumpedCollection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DumpedCollection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

