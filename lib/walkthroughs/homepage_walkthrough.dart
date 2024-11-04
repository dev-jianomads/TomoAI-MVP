import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_component/walkthrough_component_widget.dart';

// Focus widget keys for this walkthrough
final placeholderWidgetSze9nhz8 = GlobalKey();
final imageBqazd9td = GlobalKey();
final image2p6t4szk = GlobalKey();
final imageZvp8ke0q = GlobalKey();
final iconButtonCemob0p9 = GlobalKey();

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
                  'SWIPE RIGHT if you are interested in the person and chat with them. SWIPE LEFT if you are not interested in the person. SWIPE UP to add the person to your Favorites.',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: imageBqazd9td,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughComponentWidget(
              widgetName: 'Match Button',
              instruction:
                  'Click this button if you want to get to know the person more and chat with them. You can also Swipe Right on the user\'s profile card above to add them & chat with them',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: image2p6t4szk,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughComponentWidget(
              widgetName: 'Dislike Button',
              instruction:
                  'Click this button if you are not interested in the person diplayed in the profile card above. You can also SWIPE LEFT on the profile card above if you are not interested in that person',
            ),
          ),
        ],
      ),

      /// Step 4
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
                  'Click this button if you want to add the user to your favorites so you can check them out later.',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: iconButtonCemob0p9,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomLeft,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughComponentWidget(
              widgetName: 'Filter Button',
              instruction:
                  'Click this button to filter through the results. Eg. Age, Location, interests, & more',
            ),
          ),
        ],
      ),
    ];
