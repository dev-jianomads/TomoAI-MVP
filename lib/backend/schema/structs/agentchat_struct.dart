// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AgentchatStruct extends FFFirebaseStruct {
  AgentchatStruct({
    String? type,
    String? content,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _type = type,
        _content = content,
        super(firestoreUtilData);

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  static AgentchatStruct fromMap(Map<String, dynamic> data) => AgentchatStruct(
        type: data['type'] as String?,
        content: data['content'] as String?,
      );

  static AgentchatStruct? maybeFromMap(dynamic data) => data is Map
      ? AgentchatStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'content': _content,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
      }.withoutNulls;

  static AgentchatStruct fromSerializableMap(Map<String, dynamic> data) =>
      AgentchatStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AgentchatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AgentchatStruct &&
        type == other.type &&
        content == other.content;
  }

  @override
  int get hashCode => const ListEquality().hash([type, content]);
}

AgentchatStruct createAgentchatStruct({
  String? type,
  String? content,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AgentchatStruct(
      type: type,
      content: content,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AgentchatStruct? updateAgentchatStruct(
  AgentchatStruct? agentchat, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    agentchat
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAgentchatStructData(
  Map<String, dynamic> firestoreData,
  AgentchatStruct? agentchat,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (agentchat == null) {
    return;
  }
  if (agentchat.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && agentchat.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final agentchatData = getAgentchatFirestoreData(agentchat, forFieldValue);
  final nestedData = agentchatData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = agentchat.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAgentchatFirestoreData(
  AgentchatStruct? agentchat, [
  bool forFieldValue = false,
]) {
  if (agentchat == null) {
    return {};
  }
  final firestoreData = mapToFirestore(agentchat.toMap());

  // Add any Firestore field values
  agentchat.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAgentchatListFirestoreData(
  List<AgentchatStruct>? agentchats,
) =>
    agentchats?.map((e) => getAgentchatFirestoreData(e, true)).toList() ?? [];
