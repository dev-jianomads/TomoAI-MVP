import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_component/walkthrough_component_widget.dart';

// Focus widget keys for this walkthrough
final placeholderWidgetSze9nhz8 = GlobalKey();
final imageZvp8ke0q = GlobalKey();

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
            builder: (context, __) => const WalkthroughComponentWidget(
              widgetName: 'User Profile Card',
              instruction:
                  'SWIPE RIGHT if you want to prioritize this task. SWIPE LEFT if you want to snooze task.',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: imageZvp8ke0q,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughComponentWidget(
              widgetName: 'Favorites Button',
              instruction:
                  'Click this button if you want to add the task to your favorites so you can check them out later.',
            ),
          ),
        ],
      ),
    ];
