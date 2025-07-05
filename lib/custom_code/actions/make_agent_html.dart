// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> makeAgentHtml(String taskId) async {
  return '''
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Inter font -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">

  <!-- n8n-chat base CSS -->
  <link href="https://cdn.jsdelivr.net/npm/@n8n/chat/dist/style.css" rel="stylesheet"/>

  <style>
    /* ---- dark shell + no header ------------------------------------- */
    :root{
      --chat--color-light:#000;
      --chat--color-light-shade-50:#000;
      --chat--color-light-shade-100:#000;
      --chat--message--bot--background:#1a1a1a;
      --chat--message--bot--color:#fff;
      --chat--message--user--background:#20b69e;
      --chat--message--user--color:#fff;
      --chat--header-height:0;
      --chat--header--padding:0;
    }

    /* ---- Inter + 14 px everywhere, leave colours to widget defaults -- */
    #n8n-chat { font-family:'Inter',sans-serif!important; }
    #n8n-chat, #n8n-chat * { font-size:14px!important; }
  </style>
</head>

<body>
  <script type="module">
    import { createChat } from 'https://cdn.jsdelivr.net/npm/@n8n/chat/dist/chat.bundle.es.js';

    /* chat is rendered fullscreen inside this HTML container */
    createChat({
      mode: 'fullscreen',                 // ← always visible, no toggle
      showWelcomeScreen: false,
      metadata: { taskId: "$taskId" },
      webhookUrl: 'https://n8n.srv845833.hstgr.cloud/webhook/95720286-0bb4-4e95-acca-5d6a42b03ef8/chat',
      initialMessages: [
        "Hi I'm Tomo, how can I help you with your task today?"
      ]
    });
  </script>
</body>
</html>
''';
}
