// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dev/dev_page.dart';
import '../features/home/presentation/page/home_page.dart';
import '../features/load/presentation/page/load_page.dart';
import '../features/login/presentation/page/login_page.dart';
import '../features/spot_detail/presentation/page/spot_detail_page.dart';
import '../features/spotdetail_modal/presentation/page/spot_detail_review_page.dart';

part 'app_router.g.dart';

enum SGRoute {
  load,
  dev,
  home,
  login,
  spotDetail,
  spotDetailReview,
  register,
  forgotPassword,
  profile,
  editProfile,
  changePassword;

  String get route => '/${toString().replaceAll('SGRoute.', '')}';
  String get name => toString().replaceAll('SGRoute.', '');
}

@riverpod
GoRouter goRouter(Ref ref) => GoRouter(
      initialLocation: SGRoute.load.route,
      routes: <GoRoute>[
        GoRoute(
          path: SGRoute.load.route,
          builder: (BuildContext context, GoRouterState state) =>
              const LoadPage(),
        ),
        GoRoute(
          path: SGRoute.login.route,
          builder: (BuildContext context, GoRouterState state) =>
              const LoginPage(),
        ),
        GoRoute(
          path: SGRoute.home.route,
          builder: (BuildContext context, GoRouterState state) =>
              const HomePage(),
        ),
        GoRoute(
          path: SGRoute.spotDetail.route,
          builder: (BuildContext context, GoRouterState state) =>
              const SpotDetailPage(),
        ),
        GoRoute(
          path: SGRoute.spotDetailReview.route,
          builder: (BuildContext context, GoRouterState state) {
            final Object? extra = state.extra;
            final List<String> selectedStatusIds =
                extra is List<String> ? extra : const <String>[];

            return SpotDetailReviewPage(selectedStatusIds: selectedStatusIds);
          },
        ),
        GoRoute(
          path: SGRoute.dev.route,
          builder: (BuildContext context, GoRouterState state) =>
              const DevPage(),
        ),
      ],
    );
