import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

  bool showSplashImage = true;

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
      errorBuilder: (context, state) => HomeWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => HomeWidget(),
        ),
        FFRoute(
          name: HomeWidget.routeName,
          path: HomeWidget.routePath,
          builder: (context, params) => HomeWidget(),
        ),
        FFRoute(
          name: SplashPageWidget.routeName,
          path: SplashPageWidget.routePath,
          builder: (context, params) => SplashPageWidget(),
        ),
        FFRoute(
          name: OnBoardingWidget.routeName,
          path: OnBoardingWidget.routePath,
          builder: (context, params) => OnBoardingWidget(),
        ),
        FFRoute(
          name: CreateAccountWidget.routeName,
          path: CreateAccountWidget.routePath,
          builder: (context, params) => CreateAccountWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: StandingsWidget.routeName,
          path: StandingsWidget.routePath,
          builder: (context, params) => StandingsWidget(),
        ),
        FFRoute(
          name: MyTeamWidget.routeName,
          path: MyTeamWidget.routePath,
          builder: (context, params) => MyTeamWidget(),
        ),
        FFRoute(
          name: ImpactWidget.routeName,
          path: ImpactWidget.routePath,
          builder: (context, params) => ImpactWidget(),
        ),
        FFRoute(
          name: MoreWidget.routeName,
          path: MoreWidget.routePath,
          builder: (context, params) => MoreWidget(),
        ),
        FFRoute(
          name: CompanyProfileWidget.routeName,
          path: CompanyProfileWidget.routePath,
          builder: (context, params) => CompanyProfileWidget(),
        ),
        FFRoute(
          name: CompanyStandingsDetailWidget.routeName,
          path: CompanyStandingsDetailWidget.routePath,
          builder: (context, params) => CompanyStandingsDetailWidget(),
        ),
        FFRoute(
          name: ManageRosterWidget.routeName,
          path: ManageRosterWidget.routePath,
          builder: (context, params) => ManageRosterWidget(),
        ),
        FFRoute(
          name: CompanyAdminDashboardWidget.routeName,
          path: CompanyAdminDashboardWidget.routePath,
          builder: (context, params) => CompanyAdminDashboardWidget(),
        ),
        FFRoute(
          name: InvitePlayersWidget.routeName,
          path: InvitePlayersWidget.routePath,
          builder: (context, params) => InvitePlayersWidget(),
        ),
        FFRoute(
          name: EventListWidget.routeName,
          path: EventListWidget.routePath,
          builder: (context, params) => EventListWidget(),
        ),
        FFRoute(
          name: EventWidget.routeName,
          path: EventWidget.routePath,
          builder: (context, params) => EventWidget(),
        ),
        FFRoute(
          name: EnterEventWidget.routeName,
          path: EnterEventWidget.routePath,
          builder: (context, params) => EnterEventWidget(),
        ),
        FFRoute(
          name: EventRoundWidget.routeName,
          path: EventRoundWidget.routePath,
          builder: (context, params) => EventRoundWidget(),
        ),
        FFRoute(
          name: EventLeaderboardWidget.routeName,
          path: EventLeaderboardWidget.routePath,
          builder: (context, params) => EventLeaderboardWidget(),
        ),
        FFRoute(
          name: EventLeaderboardAdminWidget.routeName,
          path: EventLeaderboardAdminWidget.routePath,
          builder: (context, params) => EventLeaderboardAdminWidget(),
        ),
        FFRoute(
          name: CreateEventWidget.routeName,
          path: CreateEventWidget.routePath,
          builder: (context, params) => CreateEventWidget(),
        ),
        FFRoute(
          name: EditEventWidget.routeName,
          path: EditEventWidget.routePath,
          builder: (context, params) => EditEventWidget(),
        ),
        FFRoute(
          name: PracticeRoundWidget.routeName,
          path: PracticeRoundWidget.routePath,
          builder: (context, params) => PracticeRoundWidget(),
        ),
        FFRoute(
          name: ProfileWidget.routeName,
          path: ProfileWidget.routePath,
          builder: (context, params) => ProfileWidget(),
        ),
        FFRoute(
          name: PublicProfileWidget.routeName,
          path: PublicProfileWidget.routePath,
          builder: (context, params) => PublicProfileWidget(),
        ),
        FFRoute(
          name: EditProfileWidget.routeName,
          path: EditProfileWidget.routePath,
          builder: (context, params) => EditProfileWidget(),
        ),
        FFRoute(
          name: ChallengeIncomeWidget.routeName,
          path: ChallengeIncomeWidget.routePath,
          builder: (context, params) => ChallengeIncomeWidget(),
        ),
        FFRoute(
          name: SponsorPackagesWidget.routeName,
          path: SponsorPackagesWidget.routePath,
          builder: (context, params) => SponsorPackagesWidget(),
        ),
        FFRoute(
          name: MessageSupportWidget.routeName,
          path: MessageSupportWidget.routePath,
          builder: (context, params) => MessageSupportWidget(),
        ),
        FFRoute(
          name: SupportInboxWidget.routeName,
          path: SupportInboxWidget.routePath,
          builder: (context, params) => SupportInboxWidget(),
        ),
        FFRoute(
          name: SettingsWidget.routeName,
          path: SettingsWidget.routePath,
          builder: (context, params) => SettingsWidget(),
        ),
        FFRoute(
          name: RulesWidget.routeName,
          path: RulesWidget.routePath,
          builder: (context, params) => RulesWidget(),
        ),
        FFRoute(
          name: TermsWidget.routeName,
          path: TermsWidget.routePath,
          builder: (context, params) => TermsWidget(),
        ),
        FFRoute(
          name: PrivacyWidget.routeName,
          path: PrivacyWidget.routePath,
          builder: (context, params) => PrivacyWidget(),
        ),
        FFRoute(
          name: LogOutWidget.routeName,
          path: LogOutWidget.routePath,
          builder: (context, params) => LogOutWidget(),
        ),
        FFRoute(
          name: DeleteAccountWidget.routeName,
          path: DeleteAccountWidget.routePath,
          builder: (context, params) => DeleteAccountWidget(),
        ),
        FFRoute(
          name: MessageSupportUserWidget.routeName,
          path: MessageSupportUserWidget.routePath,
          builder: (context, params) => MessageSupportUserWidget(),
        ),
        FFRoute(
          name: SupportThreadWidget.routeName,
          path: SupportThreadWidget.routePath,
          builder: (context, params) => SupportThreadWidget(),
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
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  name: state.name,
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
              : MaterialPage(
                  key: state.pageKey, name: state.name, child: child);
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
