import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';

import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : OnboardingPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : OnboardingPageWidget(),
        ),
        FFRoute(
          name: OnboardingImageWidget.routeName,
          path: OnboardingImageWidget.routePath,
          builder: (context, params) => OnboardingImageWidget(),
        ),
        FFRoute(
          name: OnboardingPageWidget.routeName,
          path: OnboardingPageWidget.routePath,
          builder: (context, params) => OnboardingPageWidget(),
        ),
        FFRoute(
          name: AuthenticationPageWidget.routeName,
          path: AuthenticationPageWidget.routePath,
          builder: (context, params) => AuthenticationPageWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: EnterMobileNumberWidget.routeName,
          path: EnterMobileNumberWidget.routePath,
          builder: (context, params) => EnterMobileNumberWidget(),
        ),
        FFRoute(
          name: VerifyMobileNumberWidget.routeName,
          path: VerifyMobileNumberWidget.routePath,
          builder: (context, params) => VerifyMobileNumberWidget(
            phoneNumber: params.getParam(
              'phoneNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ForgotPasswordWidget.routeName,
          path: ForgotPasswordWidget.routePath,
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: EditProfileWidget.routeName,
          path: EditProfileWidget.routePath,
          builder: (context, params) => EditProfileWidget(),
        ),
        FFRoute(
          name: ChooseGenderWidget.routeName,
          path: ChooseGenderWidget.routePath,
          builder: (context, params) => ChooseGenderWidget(),
        ),
        FFRoute(
          name: PreferencesWidget.routeName,
          path: PreferencesWidget.routePath,
          builder: (context, params) => PreferencesWidget(),
        ),
        FFRoute(
          name: EnableNotificationsWidget.routeName,
          path: EnableNotificationsWidget.routePath,
          builder: (context, params) => EnableNotificationsWidget(),
        ),
        FFRoute(
            name: HomepageWidget.routeName,
            path: HomepageWidget.routePath,
            builder: (context, params) => params.isEmpty
                ? NavBarPage(initialPage: 'Homepage')
                : NavBarPage(
                    initialPage: 'Homepage',
                    page: HomepageWidget(),
                  )),
        FFRoute(
          name: AllChatsWidget.routeName,
          path: AllChatsWidget.routePath,
          builder: (context, params) => AllChatsWidget(),
        ),
        FFRoute(
          name: ChatDetailsWidget.routeName,
          path: ChatDetailsWidget.routePath,
          builder: (context, params) => ChatDetailsWidget(),
        ),
        FFRoute(
          name: ProfileDetailsWidget.routeName,
          path: ProfileDetailsWidget.routePath,
          builder: (context, params) => ProfileDetailsWidget(),
        ),
        FFRoute(
          name: FocusViewWidget.routeName,
          path: FocusViewWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'FocusView')
              : FocusViewWidget(
                  yesterdayDate: params.getParam(
                    'yesterdayDate',
                    ParamType.DateTime,
                  ),
                ),
        ),
        FFRoute(
          name: IntegrationsWidget.routeName,
          path: IntegrationsWidget.routePath,
          builder: (context, params) => IntegrationsWidget(),
        ),
        FFRoute(
          name: AccessWidget.routeName,
          path: AccessWidget.routePath,
          builder: (context, params) => AccessWidget(),
        ),
        FFRoute(
          name: Preferences2Widget.routeName,
          path: Preferences2Widget.routePath,
          builder: (context, params) => Preferences2Widget(),
        ),
        FFRoute(
          name: TomochatWidget.routeName,
          path: TomochatWidget.routePath,
          builder: (context, params) => TomochatWidget(
            tasks: params.getParam<TasksRow>(
              'tasks',
              ParamType.SupabaseRow,
            ),
            email: params.getParam<EmailsRow>(
              'email',
              ParamType.SupabaseRow,
            ),
            chatId: params.getParam(
              'chatId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: TomochatOriginalWidget.routeName,
          path: TomochatOriginalWidget.routePath,
          builder: (context, params) => TomochatOriginalWidget(
            tasks: params.getParam<TasksRow>(
              'tasks',
              ParamType.SupabaseRow,
            ),
            email: params.getParam<EmailsRow>(
              'email',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: TaskViewWidget.routeName,
          path: TaskViewWidget.routePath,
          builder: (context, params) => TaskViewWidget(
            yesterdayDate: params.getParam(
              'yesterdayDate',
              ParamType.DateTime,
            ),
          ),
        ),
        FFRoute(
          name: EmailsPreviewWidget.routeName,
          path: EmailsPreviewWidget.routePath,
          builder: (context, params) => EmailsPreviewWidget(
            threadId: params.getParam(
              'threadId',
              ParamType.String,
            ),
            latestcontent: params.getParam(
              'latestcontent',
              ParamType.String,
            ),
            latestdate: params.getParam(
              'latestdate',
              ParamType.DateTime,
            ),
            emailURL: params.getParam(
              'emailURL',
              ParamType.String,
            ),
            senderName: params.getParam(
              'senderName',
              ParamType.String,
            ),
            taskTitle: params.getParam(
              'taskTitle',
              ParamType.String,
            ),
            taskAppName: params.getParam(
              'taskAppName',
              ParamType.String,
            ),
            taskId: params.getParam(
              'taskId',
              ParamType.String,
            ),
            taskExpanded: params.getParam(
              'taskExpanded',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: SignupWidget.routeName,
          path: SignupWidget.routePath,
          builder: (context, params) => SignupWidget(),
        ),
        FFRoute(
          name: DigestViewWidget.routeName,
          path: DigestViewWidget.routePath,
          builder: (context, params) => DigestViewWidget(
            yesterdayDate: params.getParam(
              'yesterdayDate',
              ParamType.DateTime,
            ),
          ),
        ),
        FFRoute(
          name: UserPreferencesWidget.routeName,
          path: UserPreferencesWidget.routePath,
          builder: (context, params) => UserPreferencesWidget(
            yesterdayDate: params.getParam(
              'yesterdayDate',
              ParamType.DateTime,
            ),
          ),
        ),
        FFRoute(
          name: BlacklistViewWidget.routeName,
          path: BlacklistViewWidget.routePath,
          builder: (context, params) => BlacklistViewWidget(),
        ),
        FFRoute(
          name: GoogleAuthErrorWidget.routeName,
          path: GoogleAuthErrorWidget.routePath,
          builder: (context, params) => GoogleAuthErrorWidget(
            message: params.getParam(
              'message',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: EmailsDebugWidget.routeName,
          path: EmailsDebugWidget.routePath,
          builder: (context, params) => EmailsDebugWidget(
            latestcontent: params.getParam(
              'latestcontent',
              ParamType.String,
            ),
            senderName: params.getParam(
              'senderName',
              ParamType.String,
            ),
            taskId: params.getParam(
              'taskId',
              ParamType.String,
            ),
            emailDate: params.getParam(
              'emailDate',
              ParamType.DateTime,
            ),
            emailId: params.getParam(
              'emailId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: WebViewWidget.routeName,
          path: WebViewWidget.routePath,
          builder: (context, params) => WebViewWidget(
            yesterdayDate: params.getParam(
              'yesterdayDate',
              ParamType.DateTime,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/onboardingPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
