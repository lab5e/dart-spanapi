//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  /// [json] if it's non-null, null if [json] is null.
  static OutputStatusResponse fromJson(Map<String, dynamic> json) =>
      json == null
          ? null
          : OutputStatusResponse(
              collectionId: json[r'collectionId'],
              outputId: json[r'outputId'],
              enabled: json[r'enabled'],
              errorCount: json[r'errorCount'],
              forwarded: json[r'forwarded'],
              received: json[r'received'],
              retransmits: json[r'retransmits'],
            );

  static List<OutputStatusResponse> listFromJson(
    List<dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) =>
      json == null || json.isEmpty
          ? true == emptyIsNull
              ? null
              : <OutputStatusResponse>[]
          : json
              .map((v) => OutputStatusResponse.fromJson(v))
              .toList(growable: true == growable);

  static Map<String, OutputStatusResponse> mapFromJson(
      Map<String, dynamic> json) {
    final map = <String, OutputStatusResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) =>
          map[key] = OutputStatusResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OutputStatusResponse-objects as value to a dart map
  static Map<String, List<OutputStatusResponse>> mapListFromJson(
    Map<String, dynamic> json, {
    bool emptyIsNull,
    bool growable,
  }) {
    final map = <String, List<OutputStatusResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OutputStatusResponse.listFromJson(v,
            emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
