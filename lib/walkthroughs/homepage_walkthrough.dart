import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_component/walkthrough_component_widget.dart';

// Focus widget keys for this walkthrough
final placeholderWidgetSze9nhz8 = GlobalKey();

/// Homepage Walkthrough
///
/// Homepage UI tutorials
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: placeholderWidgetSze9nhz8,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughComponentWidget(
              widgetName: 'User Profile Card',
              instruction:
                  'SWIPE RIGHT if you want to prioritize this task. SWIPE LEFT if you want to snooze task.',
            ),
          ),
        ],
      ),
    ];
