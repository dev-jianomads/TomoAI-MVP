// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TimeSlotsStruct extends FFFirebaseStruct {
  TimeSlotsStruct({
    int? duration,
    String? displayTime,
    String? displayDate,
    String? displayDatetime,
    String? rawDatetime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _duration = duration,
        _displayTime = displayTime,
        _displayDate = displayDate,
        _displayDatetime = displayDatetime,
        _rawDatetime = rawDatetime,
        super(firestoreUtilData);

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  set duration(int? val) => _duration = val;

  void incrementDuration(int amount) => duration = duration + amount;

  bool hasDuration() => _duration != null;

  // "display_time" field.
  String? _displayTime;
  String get displayTime => _displayTime ?? '';
  set displayTime(String? val) => _displayTime = val;

  bool hasDisplayTime() => _displayTime != null;

  // "display_date" field.
  String? _displayDate;
  String get displayDate => _displayDate ?? '';
  set displayDate(String? val) => _displayDate = val;

  bool hasDisplayDate() => _displayDate != null;

  // "display_datetime" field.
  String? _displayDatetime;
  String get displayDatetime => _displayDatetime ?? '';
  set displayDatetime(String? val) => _displayDatetime = val;

  bool hasDisplayDatetime() => _displayDatetime != null;

  // "raw_datetime" field.
  String? _rawDatetime;
  String get rawDatetime => _rawDatetime ?? '';
  set rawDatetime(String? val) => _rawDatetime = val;

  bool hasRawDatetime() => _rawDatetime != null;

  static TimeSlotsStruct fromMap(Map<String, dynamic> data) => TimeSlotsStruct(
        duration: castToType<int>(data['duration']),
        displayTime: data['display_time'] as String?,
        displayDate: data['display_date'] as String?,
        displayDatetime: data['display_datetime'] as String?,
        rawDatetime: data['raw_datetime'] as String?,
      );

  static TimeSlotsStruct? maybeFromMap(dynamic data) => data is Map
      ? TimeSlotsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'duration': _duration,
        'display_time': _displayTime,
        'display_date': _displayDate,
        'display_datetime': _displayDatetime,
        'raw_datetime': _rawDatetime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'duration': serializeParam(
          _duration,
          ParamType.int,
        ),
        'display_time': serializeParam(
          _displayTime,
          ParamType.String,
        ),
        'display_date': serializeParam(
          _displayDate,
          ParamType.String,
        ),
        'display_datetime': serializeParam(
          _displayDatetime,
          ParamType.String,
        ),
        'raw_datetime': serializeParam(
          _rawDatetime,
          ParamType.String,
        ),
      }.withoutNulls;

  static TimeSlotsStruct fromSerializableMap(Map<String, dynamic> data) =>
      TimeSlotsStruct(
        duration: deserializeParam(
          data['duration'],
          ParamType.int,
          false,
        ),
        displayTime: deserializeParam(
          data['display_time'],
          ParamType.String,
          false,
        ),
        displayDate: deserializeParam(
          data['display_date'],
          ParamType.String,
          false,
        ),
        displayDatetime: deserializeParam(
          data['display_datetime'],
          ParamType.String,
          false,
        ),
        rawDatetime: deserializeParam(
          data['raw_datetime'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TimeSlotsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TimeSlotsStruct &&
        duration == other.duration &&
        displayTime == other.displayTime &&
        displayDate == other.displayDate &&
        displayDatetime == other.displayDatetime &&
        rawDatetime == other.rawDatetime;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([duration, displayTime, displayDate, displayDatetime, rawDatetime]);
}

TimeSlotsStruct createTimeSlotsStruct({
  int? duration,
  String? displayTime,
  String? displayDate,
  String? displayDatetime,
  String? rawDatetime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TimeSlotsStruct(
      duration: duration,
      displayTime: displayTime,
      displayDate: displayDate,
      displayDatetime: displayDatetime,
      rawDatetime: rawDatetime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TimeSlotsStruct? updateTimeSlotsStruct(
  TimeSlotsStruct? timeSlots, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    timeSlots
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTimeSlotsStructData(
  Map<String, dynamic> firestoreData,
  TimeSlotsStruct? timeSlots,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (timeSlots == null) {
    return;
  }
  if (timeSlots.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && timeSlots.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final timeSlotsData = getTimeSlotsFirestoreData(timeSlots, forFieldValue);
  final nestedData = timeSlotsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = timeSlots.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTimeSlotsFirestoreData(
  TimeSlotsStruct? timeSlots, [
  bool forFieldValue = false,
]) {
  if (timeSlots == null) {
    return {};
  }
  final firestoreData = mapToFirestore(timeSlots.toMap());

  // Add any Firestore field values
  timeSlots.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTimeSlotsListFirestoreData(
  List<TimeSlotsStruct>? timeSlotss,
) =>
    timeSlotss?.map((e) => getTimeSlotsFirestoreData(e, true)).toList() ?? [];
