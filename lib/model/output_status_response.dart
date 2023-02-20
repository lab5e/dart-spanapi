//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class OutputStatusResponse {
  /// Returns a new [OutputStatusResponse] instance.
  OutputStatusResponse({
    this.collectionId,
    this.outputId,
    this.enabled,
    this.errorCount,
    this.forwarded,
    this.received,
    this.retransmits,
  });

  String collectionId;

  String outputId;

  bool enabled;

  int errorCount;

  int forwarded;

  int received;

  int retransmits;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OutputStatusResponse &&
          other.collectionId == collectionId &&
          other.outputId == outputId &&
          other.enabled == enabled &&
          other.errorCount == errorCount &&
          other.forwarded == forwarded &&
          other.received == received &&
          other.retransmits == retransmits;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (collectionId == null ? 0 : collectionId.hashCode) +
      (outputId == null ? 0 : outputId.hashCode) +
      (enabled == null ? 0 : enabled.hashCode) +
      (errorCount == null ? 0 : errorCount.hashCode) +
      (forwarded == null ? 0 : forwarded.hashCode) +
      (received == null ? 0 : received.hashCode) +
      (retransmits == null ? 0 : retransmits.hashCode);

  @override
  String toString() =>
      'OutputStatusResponse[collectionId=$collectionId, outputId=$outputId, enabled=$enabled, errorCount=$errorCount, forwarded=$forwarded, received=$received, retransmits=$retransmits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (collectionId != null) {
      json[r'collectionId'] = collectionId;
    }
    if (outputId != null) {
      json[r'outputId'] = outputId;
    }
    if (enabled != null) {
      json[r'enabled'] = enabled;
    }
    if (errorCount != null) {
      json[r'errorCount'] = errorCount;
    }
    if (forwarded != null) {
      json[r'forwarded'] = forwarded;
    }
    if (received != null) {
      json[r'received'] = received;
    }
    if (retransmits != null) {
      json[r'retransmits'] = retransmits;
    }
    return json;
  }

  /// Returns a new [OutputStatusResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OutputStatusResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OutputStatusResponse(
        collectionId: mapValueOfType<String>(json, r'collectionId'),
        outputId: mapValueOfType<String>(json, r'outputId'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        errorCount: mapValueOfType<int>(json, r'errorCount'),
        forwarded: mapValueOfType<int>(json, r'forwarded'),
        received: mapValueOfType<int>(json, r'received'),
        retransmits: mapValueOfType<int>(json, r'retransmits'),
      );
    }
    return null;
  }

  static List<OutputStatusResponse> listFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(OutputStatusResponse.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <OutputStatusResponse>[];

  static Map<String, OutputStatusResponse> mapFromJson(dynamic json) {
    final map = <String, OutputStatusResponse>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = OutputStatusResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OutputStatusResponse-objects as value to a dart map
  static Map<String, List<OutputStatusResponse>> mapListFromJson(
    dynamic json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<OutputStatusResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = OutputStatusResponse.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
