import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI API Group Code

class OpenAIAPIGroup {
  static String getBaseUrl() => 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer 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',
  };
  static ListAssistantsCall listAssistantsCall = ListAssistantsCall();
  static CreateAssistantCall createAssistantCall = CreateAssistantCall();
  static GetAssistantCall getAssistantCall = GetAssistantCall();
  static ModifyAssistantCall modifyAssistantCall = ModifyAssistantCall();
  static DeleteAssistantCall deleteAssistantCall = DeleteAssistantCall();
  static CreateSpeechCall createSpeechCall = CreateSpeechCall();
  static CreateTranscriptionCall createTranscriptionCall =
      CreateTranscriptionCall();
  static CreateTranslationCall createTranslationCall = CreateTranslationCall();
  static CreateBatchCall createBatchCall = CreateBatchCall();
  static ListBatchesCall listBatchesCall = ListBatchesCall();
  static RetrieveBatchCall retrieveBatchCall = RetrieveBatchCall();
  static CancelBatchCall cancelBatchCall = CancelBatchCall();
  static CreateChatCompletionCall createChatCompletionCall =
      CreateChatCompletionCall();
  static CreateCompletionCall createCompletionCall = CreateCompletionCall();
  static CreateEmbeddingCall createEmbeddingCall = CreateEmbeddingCall();
  static ListFilesCall listFilesCall = ListFilesCall();
  static CreateFileCall createFileCall = CreateFileCall();
  static DeleteFileCall deleteFileCall = DeleteFileCall();
  static RetrieveFileCall retrieveFileCall = RetrieveFileCall();
  static DownloadFileCall downloadFileCall = DownloadFileCall();
  static CreateFineTuningJobCall createFineTuningJobCall =
      CreateFineTuningJobCall();
  static ListPaginatedFineTuningJobsCall listPaginatedFineTuningJobsCall =
      ListPaginatedFineTuningJobsCall();
  static RetrieveFineTuningJobCall retrieveFineTuningJobCall =
      RetrieveFineTuningJobCall();
  static CancelFineTuningJobCall cancelFineTuningJobCall =
      CancelFineTuningJobCall();
  static ListFineTuningJobCheckpointsCall listFineTuningJobCheckpointsCall =
      ListFineTuningJobCheckpointsCall();
  static ListFineTuningEventsCall listFineTuningEventsCall =
      ListFineTuningEventsCall();
  static CreateImageEditCall createImageEditCall = CreateImageEditCall();
  static CreateImageCall createImageCall = CreateImageCall();
  static CreateImageVariationCall createImageVariationCall =
      CreateImageVariationCall();
  static ListModelsCall listModelsCall = ListModelsCall();
  static RetrieveModelCall retrieveModelCall = RetrieveModelCall();
  static DeleteModelCall deleteModelCall = DeleteModelCall();
  static CreateModerationCall createModerationCall = CreateModerationCall();
  static ListInvitesCall listInvitesCall = ListInvitesCall();
  static InviteUserCall inviteUserCall = InviteUserCall();
  static RetrieveInviteCall retrieveInviteCall = RetrieveInviteCall();
  static DeleteInviteCall deleteInviteCall = DeleteInviteCall();
  static ListProjectsCall listProjectsCall = ListProjectsCall();
  static CreateProjectCall createProjectCall = CreateProjectCall();
  static RetrieveProjectCall retrieveProjectCall = RetrieveProjectCall();
  static ModifyProjectCall modifyProjectCall = ModifyProjectCall();
  static ListProjectApiKeysCall listProjectApiKeysCall =
      ListProjectApiKeysCall();
  static RetrieveProjectApiKeyCall retrieveProjectApiKeyCall =
      RetrieveProjectApiKeyCall();
  static DeleteProjectApiKeyCall deleteProjectApiKeyCall =
      DeleteProjectApiKeyCall();
  static ArchiveProjectCall archiveProjectCall = ArchiveProjectCall();
  static ListProjectRateLimitsCall listProjectRateLimitsCall =
      ListProjectRateLimitsCall();
  static UpdateProjectRateLimitsCall updateProjectRateLimitsCall =
      UpdateProjectRateLimitsCall();
  static ListProjectServiceAccountsCall listProjectServiceAccountsCall =
      ListProjectServiceAccountsCall();
  static CreateProjectServiceAccountCall createProjectServiceAccountCall =
      CreateProjectServiceAccountCall();
  static RetrieveProjectServiceAccountCall retrieveProjectServiceAccountCall =
      RetrieveProjectServiceAccountCall();
  static DeleteProjectServiceAccountCall deleteProjectServiceAccountCall =
      DeleteProjectServiceAccountCall();
  static ListProjectUsersCall listProjectUsersCall = ListProjectUsersCall();
  static CreateProjectUserCall createProjectUserCall = CreateProjectUserCall();
  static RetrieveProjectUserCall retrieveProjectUserCall =
      RetrieveProjectUserCall();
  static ModifyProjectUserCall modifyProjectUserCall = ModifyProjectUserCall();
  static DeleteProjectUserCall deleteProjectUserCall = DeleteProjectUserCall();
  static ListUsersCall listUsersCall = ListUsersCall();
  static RetrieveUserCall retrieveUserCall = RetrieveUserCall();
  static ModifyUserCall modifyUserCall = ModifyUserCall();
  static DeleteUserCall deleteUserCall = DeleteUserCall();
  static CreateThreadCall createThreadCall = CreateThreadCall();
  static CreateThreadAndRunCall createThreadAndRunCall =
      CreateThreadAndRunCall();
  static GetThreadCall getThreadCall = GetThreadCall();
  static ModifyThreadCall modifyThreadCall = ModifyThreadCall();
  static DeleteThreadCall deleteThreadCall = DeleteThreadCall();
  static ListMessagesCall listMessagesCall = ListMessagesCall();
  static CreateMessageCall createMessageCall = CreateMessageCall();
  static GetMessageCall getMessageCall = GetMessageCall();
  static ModifyMessageCall modifyMessageCall = ModifyMessageCall();
  static DeleteMessageCall deleteMessageCall = DeleteMessageCall();
  static ListRunsCall listRunsCall = ListRunsCall();
  static GetRunCall getRunCall = GetRunCall();
  static ModifyRunCall modifyRunCall = ModifyRunCall();
  static CancelRunCall cancelRunCall = CancelRunCall();
  static SubmitToolOuputsToRunCall submitToolOuputsToRunCall =
      SubmitToolOuputsToRunCall();
  static CreateUploadCall createUploadCall = CreateUploadCall();
  static CancelUploadCall cancelUploadCall = CancelUploadCall();
  static CompleteUploadCall completeUploadCall = CompleteUploadCall();
  static AddUploadPartCall addUploadPartCall = AddUploadPartCall();
  static ListVectorStoresCall listVectorStoresCall = ListVectorStoresCall();
  static CreateVectorStoreCall createVectorStoreCall = CreateVectorStoreCall();
  static GetVectorStoreCall getVectorStoreCall = GetVectorStoreCall();
  static ModifyVectorStoreCall modifyVectorStoreCall = ModifyVectorStoreCall();
  static DeleteVectorStoreCall deleteVectorStoreCall = DeleteVectorStoreCall();
  static CreateVectorStoreFileBatchCall createVectorStoreFileBatchCall =
      CreateVectorStoreFileBatchCall();
  static GetVectorStoreFileBatchCall getVectorStoreFileBatchCall =
      GetVectorStoreFileBatchCall();
  static CancelVectorStoreFileBatchCall cancelVectorStoreFileBatchCall =
      CancelVectorStoreFileBatchCall();
  static ListFilesInVectorStoreBatchCall listFilesInVectorStoreBatchCall =
      ListFilesInVectorStoreBatchCall();
  static ListVectorStoreFilesCall listVectorStoreFilesCall =
      ListVectorStoreFilesCall();
  static CreateVectorStoreFileCall createVectorStoreFileCall =
      CreateVectorStoreFileCall();
  static GetVectorStoreFileCall getVectorStoreFileCall =
      GetVectorStoreFileCall();
  static DeleteVectorStoreFileCall deleteVectorStoreFileCall =
      DeleteVectorStoreFileCall();
}

class ListAssistantsCall {
  Future<ApiCallResponse> call({
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listAssistants',
      apiUrl: '${baseUrl}/assistants',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAssistantCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "model": "gpt-4o",
  "name": "",
  "description": "",
  "instructions": "",
  "tools": [
    ""
  ],
  "tool_resources": {
    "code_interpreter": {
      "file_ids": [
        ""
      ]
    },
    "file_search": {
      "vector_store_ids": [
        ""
      ],
      "vector_stores": [
        {
          "file_ids": [
            ""
          ],
          "chunking_strategy": {},
          "metadata": {}
        }
      ]
    }
  },
  "metadata": {},
  "temperature": 1,
  "top_p": 1,
  "response_format": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createAssistant',
      apiUrl: '${baseUrl}/assistants',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAssistantCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAssistant',
      apiUrl: '${baseUrl}/assistants/${assistantId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyAssistantCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "model": "",
  "name": "",
  "description": "",
  "instructions": "",
  "tools": [
    ""
  ],
  "tool_resources": {
    "code_interpreter": {
      "file_ids": [
        ""
      ]
    },
    "file_search": {
      "vector_store_ids": [
        ""
      ]
    }
  },
  "metadata": {},
  "temperature": 1,
  "top_p": 1,
  "response_format": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyAssistant',
      apiUrl: '${baseUrl}/assistants/${assistantId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAssistantCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteAssistant',
      apiUrl: '${baseUrl}/assistants/${assistantId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateSpeechCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "model": "",
  "input": "",
  "voice": "alloy",
  "response_format": "mp3",
  "speed": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createSpeech',
      apiUrl: '${baseUrl}/audio/speech',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateTranscriptionCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'createTranscription',
      apiUrl: '${baseUrl}/audio/transcriptions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateTranslationCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'createTranslation',
      apiUrl: '${baseUrl}/audio/translations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateBatchCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "input_file_id": "",
  "endpoint": "/v1/chat/completions",
  "completion_window": "24h",
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createBatch',
      apiUrl: '${baseUrl}/batches',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListBatchesCall {
  Future<ApiCallResponse> call({
    String? after = '',
    int? limit,
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listBatches',
      apiUrl: '${baseUrl}/batches',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'after': after,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveBatchCall {
  Future<ApiCallResponse> call({
    String? batchId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retrieveBatch',
      apiUrl: '${baseUrl}/batches/${batchId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelBatchCall {
  Future<ApiCallResponse> call({
    String? batchId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'cancelBatch',
      apiUrl: '${baseUrl}/batches/${batchId}/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateChatCompletionCall {
  Future<ApiCallResponse> call({
    dynamic promptJson,
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final prompt = _serializeJson(promptJson, true);
    final ffApiRequestBody = '''
{
  "messages": ${prompt},
  "model": "gpt-4o"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createChatCompletion',
      apiUrl: '${baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateCompletionCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "model": "",
  "prompt": "",
  "best_of": 0,
  "echo": false,
  "frequency_penalty": 0,
  "logit_bias": {},
  "logprobs": 0,
  "max_tokens": 16,
  "n": 1,
  "presence_penalty": 0,
  "seed": 0,
  "stop": "",
  "stream": false,
  "stream_options": {
    "include_usage": false
  },
  "suffix": "test.",
  "temperature": 1,
  "top_p": 1,
  "user": "user-1234"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createCompletion',
      apiUrl: '${baseUrl}/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateEmbeddingCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "input": "The quick brown fox jumped over the lazy dog",
  "model": "text-embedding-3-small",
  "encoding_format": "float",
  "dimensions": 0,
  "user": "user-1234"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createEmbedding',
      apiUrl: '${baseUrl}/embeddings',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFilesCall {
  Future<ApiCallResponse> call({
    String? purpose = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listFiles',
      apiUrl: '${baseUrl}/files',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'purpose': purpose,
        'limit': limit,
        'order': order,
        'after': after,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateFileCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'createFile',
      apiUrl: '${baseUrl}/files',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteFileCall {
  Future<ApiCallResponse> call({
    String? fileId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteFile',
      apiUrl: '${baseUrl}/files/${fileId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveFileCall {
  Future<ApiCallResponse> call({
    String? fileId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retrieveFile',
      apiUrl: '${baseUrl}/files/${fileId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DownloadFileCall {
  Future<ApiCallResponse> call({
    String? fileId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'downloadFile',
      apiUrl: '${baseUrl}/files/${fileId}/content',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateFineTuningJobCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "model": "gpt-4o-mini",
  "training_file": "file-abc123",
  "hyperparameters": {
    "batch_size": "",
    "learning_rate_multiplier": "",
    "n_epochs": ""
  },
  "suffix": "",
  "validation_file": "file-abc123",
  "integrations": [
    {
      "type": "",
      "wandb": {
        "project": "my-wandb-project",
        "name": "",
        "entity": "",
        "tags": [
          "custom-tag"
        ]
      }
    }
  ],
  "seed": 42
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createFineTuningJob',
      apiUrl: '${baseUrl}/fine_tuning/jobs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListPaginatedFineTuningJobsCall {
  Future<ApiCallResponse> call({
    String? after = '',
    int? limit,
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listPaginatedFineTuningJobs',
      apiUrl: '${baseUrl}/fine_tuning/jobs',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'after': after,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveFineTuningJobCall {
  Future<ApiCallResponse> call({
    String? fineTuningJobId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retrieveFineTuningJob',
      apiUrl: '${baseUrl}/fine_tuning/jobs/${fineTuningJobId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelFineTuningJobCall {
  Future<ApiCallResponse> call({
    String? fineTuningJobId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'cancelFineTuningJob',
      apiUrl: '${baseUrl}/fine_tuning/jobs/${fineTuningJobId}/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFineTuningJobCheckpointsCall {
  Future<ApiCallResponse> call({
    String? fineTuningJobId = '',
    String? after = '',
    int? limit,
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listFineTuningJobCheckpoints',
      apiUrl: '${baseUrl}/fine_tuning/jobs/${fineTuningJobId}/checkpoints',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'after': after,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFineTuningEventsCall {
  Future<ApiCallResponse> call({
    String? fineTuningJobId = '',
    String? after = '',
    int? limit,
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listFineTuningEvents',
      apiUrl: '${baseUrl}/fine_tuning/jobs/${fineTuningJobId}/events',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'after': after,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateImageEditCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'createImageEdit',
      apiUrl: '${baseUrl}/images/edits',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateImageCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "prompt": "A cute baby sea otter",
  "model": "dall-e-3",
  "n": 1,
  "quality": "standard",
  "response_format": "url",
  "size": "1024x1024",
  "style": "vivid",
  "user": "user-1234"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createImage',
      apiUrl: '${baseUrl}/images/generations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateImageVariationCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'createImageVariation',
      apiUrl: '${baseUrl}/images/variations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListModelsCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listModels',
      apiUrl: '${baseUrl}/models',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveModelCall {
  Future<ApiCallResponse> call({
    String? model = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retrieveModel',
      apiUrl: '${baseUrl}/models/${model}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteModelCall {
  Future<ApiCallResponse> call({
    String? model = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteModel',
      apiUrl: '${baseUrl}/models/${model}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateModerationCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "input": "",
  "model": "omni-moderation-2024-09-26"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createModeration',
      apiUrl: '${baseUrl}/moderations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListInvitesCall {
  Future<ApiCallResponse> call({
    int? limit,
    String? after = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'list-invites',
      apiUrl: '${baseUrl}/organization/invites',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'after': after,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InviteUserCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "",
  "role": "reader"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'inviteUser',
      apiUrl: '${baseUrl}/organization/invites',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveInviteCall {
  Future<ApiCallResponse> call({
    String? inviteId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retrieve-invite',
      apiUrl: '${baseUrl}/organization/invites/${inviteId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteInviteCall {
  Future<ApiCallResponse> call({
    String? inviteId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete-invite',
      apiUrl: '${baseUrl}/organization/invites/${inviteId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListProjectsCall {
  Future<ApiCallResponse> call({
    int? limit,
    String? after = '',
    bool? includeArchived,
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'list-projects',
      apiUrl: '${baseUrl}/organization/projects',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'after': after,
        'include_archived': includeArchived,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateProjectCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create-project',
      apiUrl: '${baseUrl}/organization/projects',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveProjectCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retrieve-project',
      apiUrl: '${baseUrl}/organization/projects/${projectId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyProjectCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modify-project',
      apiUrl: '${baseUrl}/organization/projects/${projectId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListProjectApiKeysCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    int? limit,
    String? after = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'list-project-api-keys',
      apiUrl: '${baseUrl}/organization/projects/${projectId}/api_keys',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'after': after,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveProjectApiKeyCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    String? keyId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retrieve-project-api-key',
      apiUrl: '${baseUrl}/organization/projects/${projectId}/api_keys/${keyId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProjectApiKeyCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    String? keyId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete-project-api-key',
      apiUrl: '${baseUrl}/organization/projects/${projectId}/api_keys/${keyId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ArchiveProjectCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'archive-project',
      apiUrl: '${baseUrl}/organization/projects/${projectId}/archive',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListProjectRateLimitsCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    int? limit,
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'list-project-rate-limits',
      apiUrl: '${baseUrl}/organization/projects/${projectId}/rate_limits',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateProjectRateLimitsCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    String? rateLimitId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "max_requests_per_1_minute": 0,
  "max_tokens_per_1_minute": 0,
  "max_images_per_1_minute": 0,
  "max_audio_megabytes_per_1_minute": 0,
  "max_requests_per_1_day": 0,
  "batch_1_day_max_input_tokens": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update-project-rate-limits',
      apiUrl:
          '${baseUrl}/organization/projects/${projectId}/rate_limits/${rateLimitId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListProjectServiceAccountsCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    int? limit,
    String? after = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'list-project-service-accounts',
      apiUrl: '${baseUrl}/organization/projects/${projectId}/service_accounts',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'after': after,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateProjectServiceAccountCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create-project-service-account',
      apiUrl: '${baseUrl}/organization/projects/${projectId}/service_accounts',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveProjectServiceAccountCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    String? serviceAccountId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retrieve-project-service-account',
      apiUrl:
          '${baseUrl}/organization/projects/${projectId}/service_accounts/${serviceAccountId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProjectServiceAccountCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    String? serviceAccountId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete-project-service-account',
      apiUrl:
          '${baseUrl}/organization/projects/${projectId}/service_accounts/${serviceAccountId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListProjectUsersCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    int? limit,
    String? after = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'list-project-users',
      apiUrl: '${baseUrl}/organization/projects/${projectId}/users',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'after': after,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateProjectUserCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user_id": "",
  "role": "owner"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create-project-user',
      apiUrl: '${baseUrl}/organization/projects/${projectId}/users',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveProjectUserCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    String? userId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retrieve-project-user',
      apiUrl: '${baseUrl}/organization/projects/${projectId}/users/${userId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyProjectUserCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    String? userId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "role": "owner"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modify-project-user',
      apiUrl: '${baseUrl}/organization/projects/${projectId}/users/${userId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProjectUserCall {
  Future<ApiCallResponse> call({
    String? projectId = '',
    String? userId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete-project-user',
      apiUrl: '${baseUrl}/organization/projects/${projectId}/users/${userId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListUsersCall {
  Future<ApiCallResponse> call({
    int? limit,
    String? after = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'list-users',
      apiUrl: '${baseUrl}/organization/users',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'after': after,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveUserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retrieve-user',
      apiUrl: '${baseUrl}/organization/users/${userId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyUserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "role": "owner"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modify-user',
      apiUrl: '${baseUrl}/organization/users/${userId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete-user',
      apiUrl: '${baseUrl}/organization/users/${userId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateThreadCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "messages": [
    {
      "role": "user",
      "content": "",
      "attachments": [
        {
          "file_id": "",
          "tools": [
            ""
          ]
        }
      ],
      "metadata": {}
    }
  ],
  "tool_resources": {
    "code_interpreter": {
      "file_ids": [
        ""
      ]
    },
    "file_search": {
      "vector_store_ids": [
        ""
      ],
      "vector_stores": [
        {
          "file_ids": [
            ""
          ],
          "chunking_strategy": {},
          "metadata": {}
        }
      ]
    }
  },
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createThread',
      apiUrl: '${baseUrl}/threads',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateThreadAndRunCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "assistant_id": "",
  "thread": {
    "messages": [
      {
        "role": "user",
        "content": "",
        "attachments": [
          {
            "file_id": "",
            "tools": [
              ""
            ]
          }
        ],
        "metadata": {}
      }
    ],
    "tool_resources": {
      "code_interpreter": {
        "file_ids": [
          ""
        ]
      },
      "file_search": {
        "vector_store_ids": [
          ""
        ],
        "vector_stores": [
          {
            "file_ids": [
              ""
            ],
            "chunking_strategy": {},
            "metadata": {}
          }
        ]
      }
    },
    "metadata": {}
  },
  "model": "gpt-4o",
  "instructions": "",
  "tools": [
    ""
  ],
  "tool_resources": {
    "code_interpreter": {
      "file_ids": [
        ""
      ]
    },
    "file_search": {
      "vector_store_ids": [
        ""
      ]
    }
  },
  "metadata": {},
  "temperature": 1,
  "top_p": 1,
  "stream": false,
  "max_prompt_tokens": 0,
  "max_completion_tokens": 0,
  "truncation_strategy": {
    "type": "auto",
    "last_messages": 0
  },
  "tool_choice": "",
  "parallel_tool_calls": false,
  "response_format": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createThreadAndRun',
      apiUrl: '${baseUrl}/threads/runs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetThreadCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getThread',
      apiUrl: '${baseUrl}/threads/${threadId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyThreadCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tool_resources": {
    "code_interpreter": {
      "file_ids": [
        ""
      ]
    },
    "file_search": {
      "vector_store_ids": [
        ""
      ]
    }
  },
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyThread',
      apiUrl: '${baseUrl}/threads/${threadId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteThreadCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteThread',
      apiUrl: '${baseUrl}/threads/${threadId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListMessagesCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? runId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listMessages',
      apiUrl: '${baseUrl}/threads/${threadId}/messages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
        'run_id': runId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateMessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "role": "user",
  "content": "",
  "attachments": [
    {
      "file_id": "",
      "tools": [
        ""
      ]
    }
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createMessage',
      apiUrl: '${baseUrl}/threads/${threadId}/messages',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? messageId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getMessage',
      apiUrl: '${baseUrl}/threads/${threadId}/messages/${messageId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyMessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? messageId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyMessage',
      apiUrl: '${baseUrl}/threads/${threadId}/messages/${messageId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteMessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? messageId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteMessage',
      apiUrl: '${baseUrl}/threads/${threadId}/messages/${messageId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListRunsCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listRuns',
      apiUrl: '${baseUrl}/threads/${threadId}/runs',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getRun',
      apiUrl: '${baseUrl}/threads/${threadId}/runs/${runId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyRun',
      apiUrl: '${baseUrl}/threads/${threadId}/runs/${runId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'cancelRun',
      apiUrl: '${baseUrl}/threads/${threadId}/runs/${runId}/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SubmitToolOuputsToRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tool_outputs": [
    {
      "tool_call_id": "",
      "output": ""
    }
  ],
  "stream": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'submitToolOuputsToRun',
      apiUrl:
          '${baseUrl}/threads/${threadId}/runs/${runId}/submit_tool_outputs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUploadCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "filename": "",
  "purpose": "assistants",
  "bytes": 0,
  "mime_type": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUpload',
      apiUrl: '${baseUrl}/uploads',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelUploadCall {
  Future<ApiCallResponse> call({
    String? uploadId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'cancelUpload',
      apiUrl: '${baseUrl}/uploads/${uploadId}/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CompleteUploadCall {
  Future<ApiCallResponse> call({
    String? uploadId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "part_ids": [
    ""
  ],
  "md5": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'completeUpload',
      apiUrl: '${baseUrl}/uploads/${uploadId}/complete',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddUploadPartCall {
  Future<ApiCallResponse> call({
    String? uploadId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'addUploadPart',
      apiUrl: '${baseUrl}/uploads/${uploadId}/parts',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListVectorStoresCall {
  Future<ApiCallResponse> call({
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listVectorStores',
      apiUrl: '${baseUrl}/vector_stores',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateVectorStoreCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "file_ids": [
    ""
  ],
  "name": "",
  "expires_after": {
    "anchor": "last_active_at",
    "days": 0
  },
  "chunking_strategy": {},
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createVectorStore',
      apiUrl: '${baseUrl}/vector_stores',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetVectorStoreCall {
  Future<ApiCallResponse> call({
    String? vectorStoreId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getVectorStore',
      apiUrl: '${baseUrl}/vector_stores/${vectorStoreId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyVectorStoreCall {
  Future<ApiCallResponse> call({
    String? vectorStoreId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "",
  "expires_after": {
    "anchor": "last_active_at",
    "days": 0
  },
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyVectorStore',
      apiUrl: '${baseUrl}/vector_stores/${vectorStoreId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteVectorStoreCall {
  Future<ApiCallResponse> call({
    String? vectorStoreId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteVectorStore',
      apiUrl: '${baseUrl}/vector_stores/${vectorStoreId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateVectorStoreFileBatchCall {
  Future<ApiCallResponse> call({
    String? vectorStoreId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "file_ids": [
    ""
  ],
  "chunking_strategy": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createVectorStoreFileBatch',
      apiUrl: '${baseUrl}/vector_stores/${vectorStoreId}/file_batches',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetVectorStoreFileBatchCall {
  Future<ApiCallResponse> call({
    String? vectorStoreId = '',
    String? batchId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getVectorStoreFileBatch',
      apiUrl:
          '${baseUrl}/vector_stores/${vectorStoreId}/file_batches/${batchId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelVectorStoreFileBatchCall {
  Future<ApiCallResponse> call({
    String? vectorStoreId = '',
    String? batchId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'cancelVectorStoreFileBatch',
      apiUrl:
          '${baseUrl}/vector_stores/${vectorStoreId}/file_batches/${batchId}/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFilesInVectorStoreBatchCall {
  Future<ApiCallResponse> call({
    String? vectorStoreId = '',
    String? batchId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? filter = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listFilesInVectorStoreBatch',
      apiUrl:
          '${baseUrl}/vector_stores/${vectorStoreId}/file_batches/${batchId}/files',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
        'filter': filter,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListVectorStoreFilesCall {
  Future<ApiCallResponse> call({
    String? vectorStoreId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? filter = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listVectorStoreFiles',
      apiUrl: '${baseUrl}/vector_stores/${vectorStoreId}/files',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
        'filter': filter,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateVectorStoreFileCall {
  Future<ApiCallResponse> call({
    String? vectorStoreId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "file_id": "",
  "chunking_strategy": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createVectorStoreFile',
      apiUrl: '${baseUrl}/vector_stores/${vectorStoreId}/files',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetVectorStoreFileCall {
  Future<ApiCallResponse> call({
    String? vectorStoreId = '',
    String? fileId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getVectorStoreFile',
      apiUrl: '${baseUrl}/vector_stores/${vectorStoreId}/files/${fileId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteVectorStoreFileCall {
  Future<ApiCallResponse> call({
    String? vectorStoreId = '',
    String? fileId = '',
    String? apiKeyAuth = '',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteVectorStoreFile',
      apiUrl: '${baseUrl}/vector_stores/${vectorStoreId}/files/${fileId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer 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',
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End OpenAI API Group Code

/// Start Langflow API Group Code

class LangflowAPIGroup {
  static String getBaseUrl() => 'https://api.langflow.astra.datastax.com/lf';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer AstraCS:MZkcHmhqTgXFfUQDtIRPcWdN:82641f2d495124c2cb7fbe1569a8399f82d1ceecd5d68e5bc17d3ed14bc2fbf3',
  };
  static ChatCompletionCall chatCompletionCall = ChatCompletionCall();
  static InitialChatCompletionCall initialChatCompletionCall =
      InitialChatCompletionCall();
}

class ChatCompletionCall {
  Future<ApiCallResponse> call({
    String? message = '',
  }) async {
    final baseUrl = LangflowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "input_value": "${escapeStringForJson(message)}",
  "output_type": "chat",
  "input_type": "chat",
  "tweaks": {
    "ChatInput-GmTgZ": {},
    "Prompt-aOuFV": {},
    "OpenAIModel-1C9GC": {},
    "ChatOutput-1ZUp0": {}
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ChatCompletion',
      apiUrl:
          '${baseUrl}/f7ff7996-14f3-463e-99bb-16859364f582/api/v1/run/Test?stream=false',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer AstraCS:MZkcHmhqTgXFfUQDtIRPcWdN:82641f2d495124c2cb7fbe1569a8399f82d1ceecd5d68e5bc17d3ed14bc2fbf3',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? sessionId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.session_id''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.outputs[:].outputs[:].results.message.data.text''',
      ));
}

class InitialChatCompletionCall {
  Future<ApiCallResponse> call({
    String? initialmessage = '',
  }) async {
    final baseUrl = LangflowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "input_value": "${escapeStringForJson(initialmessage)}",
  "output_type": "chat",
  "input_type": "chat",
  "tweaks": {
    "ChatInput-GmTgZ": {},
    "Prompt-aOuFV": {},
    "OpenAIModel-1C9GC": {},
    "ChatOutput-1ZUp0": {}
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Initial ChatCompletion',
      apiUrl:
          '${baseUrl}/f7ff7996-14f3-463e-99bb-16859364f582/api/v1/run/Test?stream=false',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer AstraCS:MZkcHmhqTgXFfUQDtIRPcWdN:82641f2d495124c2cb7fbe1569a8399f82d1ceecd5d68e5bc17d3ed14bc2fbf3',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Langflow API Group Code

class GetAccessAndRefreshTokensCall {
  static Future<ApiCallResponse> call({
    String? authCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Access and Refresh tokens',
      apiUrl: 'https://oauth2.googleapis.com/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'code': authCode,
        'client_id':
            "593702549940-o05dp44paranv7l365esg6021lpgob4j.apps.googleusercontent.com",
        'client_secret': "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",
        'redirect_url': "https://tomoaimvp-app-3sa6fr.flutterflow.app/access",
        'grant_type': "authorization_code",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAccessFromRefreshTokenCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Access from Refresh token',
      apiUrl: 'https://oauth2.googleapis.com/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'client_id':
            "593702549940-o05dp44paranv7l365esg6021lpgob4j.apps.googleusercontent.com",
        'client_secret': "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",
        'grant_type': "refresh_token",
        'refresh_token': refreshToken,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MakeSendEmailCall {
  static Future<ApiCallResponse> call({
    String? taskId = '',
    String? title = '',
  }) async {
    final ffApiRequestBody = '''
{
  "task_id": "${escapeStringForJson(taskId)}",
  "title": "${escapeStringForJson(title)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Make send email',
      apiUrl: 'https://hook.us1.make.com/yqr8canud2a3cgqh49iwrrmb1i5yo4fb',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MakeBlockTimeCall {
  static Future<ApiCallResponse> call({
    String? taskId = '',
    String? start = '',
    int? duration,
    List<String>? attendeesList,
    String? title = '',
  }) async {
    final attendees = _serializeList(attendeesList);

    final ffApiRequestBody = '''
{
  "task_id": "${escapeStringForJson(taskId)}",
  "start": "${escapeStringForJson(start)}",
  "duration": ${duration},
  "attendees": ${attendees},
  "title": "${escapeStringForJson(title)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Make block time',
      apiUrl: 'https://hook.us1.make.com/kmmhp19cu9fps2ot8g39nm91rfnborle',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? startTime(dynamic response) => (getJsonField(
        response,
        r'''$[:].start''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? endTime(dynamic response) => (getJsonField(
        response,
        r'''$[:].end''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? rawdatetime(dynamic response) => (getJsonField(
        response,
        r'''$[:].raw_datetime''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? duration(dynamic response) => (getJsonField(
        response,
        r'''$[:].duration''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? displaytime(dynamic response) => (getJsonField(
        response,
        r'''$[:].display_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? displaydate(dynamic response) => (getJsonField(
        response,
        r'''$[:].display_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? displaydatetime(dynamic response) => (getJsonField(
        response,
        r'''$[:].display_datetime''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class MakeFetchFreeTimeslotsCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? taskId = '',
    int? limit,
    String? mode = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "${escapeStringForJson(userId)}",
  "task_id": "${escapeStringForJson(taskId)}",
  "limit": ${limit},
  "mode": "${escapeStringForJson(mode)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Make fetch free timeslots',
      apiUrl: 'https://hook.us1.make.com/yn6ryl10fffhcauxi2w98xhviw3me0gc',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? startTime(dynamic response) => (getJsonField(
        response,
        r'''$[:].start''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? endTime(dynamic response) => (getJsonField(
        response,
        r'''$[:].end''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? rawdatetime(dynamic response) => (getJsonField(
        response,
        r'''$[:].raw_datetime''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? duration(dynamic response) => (getJsonField(
        response,
        r'''$[:].duration''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? displaytime(dynamic response) => (getJsonField(
        response,
        r'''$[:].display_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? displaydate(dynamic response) => (getJsonField(
        response,
        r'''$[:].display_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? displaydatetime(dynamic response) => (getJsonField(
        response,
        r'''$[:].display_datetime''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
