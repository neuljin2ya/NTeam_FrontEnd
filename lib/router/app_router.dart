// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dev/dev_page.dart';
import '../features/download_spot/presentation/page/download_spot_page.dart';
import '../features/home/presentation/page/home_page.dart';
import '../features/load/presentation/page/load_page.dart';
import '../features/login/presentation/page/login_page.dart';
import '../features/new_spot/presentation/page/new_spot_address_page.dart';
import '../features/new_spot/presentation/page/new_spot_page.dart';
import 'main_shell_page.dart';
import '../features/spot_detail/presentation/page/spot_detail_page.dart';
import '../common/spot_video_detail_args.dart';
import '../features/spot_video/presentation/page/spot_video_detail_page.dart';
import '../features/spotdetail_modal/presentation/page/spot_detail_modal.dart';
import '../features/spotdetail_modal/presentation/page/spot_detail_review_page.dart';
import '../features/upload_video/presentation/page/upload_video_page.dart';

part 'app_router.g.dart';

enum SGRoute {
  load,
  login,
  home,
  downloadSpot,
  dev,
  newSpot,
  newSpotAddress,
  spotDetail,
  spotDetailStatus,
  spotDetailReview,
  spotVideoDetail,
  uploadVideo;

  String get route => '/${toString().replaceAll('SGRoute.', '')}';
  String get name => toString().replaceAll('SGRoute.', '');
}

@riverpod
GoRouter goRouter(Ref ref) => GoRouter(
      initialLocation: SGRoute.load.route,
      overridePlatformDefaultLocation: true,
      routes: <RouteBase>[
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
        StatefulShellRoute.indexedStack(
          builder: (
            BuildContext context,
            GoRouterState state,
            StatefulNavigationShell navigationShell,
          ) {
            return MainShellPage(navigationShell: navigationShell);
          },
          branches: <StatefulShellBranch>[
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  path: SGRoute.home.route,
                  builder: (BuildContext context, GoRouterState state) =>
                      const HomePage(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  path: SGRoute.downloadSpot.route,
                  builder: (BuildContext context, GoRouterState state) =>
                      const DownloadSpotPage(),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: SGRoute.newSpot.route,
          builder: (BuildContext context, GoRouterState state) =>
              const NewSpotPage(),
        ),
        GoRoute(
          path: SGRoute.newSpotAddress.route,
          builder: (BuildContext context, GoRouterState state) =>
              const NewSpotAddressPage(),
        ),
        GoRoute(
          path: '${SGRoute.spotDetail.route}/:spotId',
          builder: (BuildContext context, GoRouterState state) {
            final String? spotIdParam = state.pathParameters['spotId'];
            final int spotId = int.tryParse(spotIdParam ?? '') ?? 0;
            final bool hideSaveButton =
                state.uri.queryParameters['hideSaveButton'] == 'true';
            return SpotDetailPage(
              spotId: spotId,
              hideSaveButton: hideSaveButton,
            );
          },
        ),
        GoRoute(
          path: '${SGRoute.spotDetailStatus.route}/:spotId',
          builder: (BuildContext context, GoRouterState state) {
            final String? spotIdParam = state.pathParameters['spotId'];
            final int spotId = int.tryParse(spotIdParam ?? '') ?? 0;

            return SpotDetailStatusPage(
              onBackPressed: () => context.pop(),
              onSubmit: (List<String> selectedStatusIds) async {
                final bool? didRegister = await context.push<bool>(
                  '${SGRoute.spotDetailReview.route}/$spotId',
                  extra: selectedStatusIds,
                );

                if ((didRegister ?? false) && context.mounted) {
                  context.pop(true);
                }
              },
            );
          },
        ),
        GoRoute(
          path: '${SGRoute.spotDetailReview.route}/:spotId',
          builder: (BuildContext context, GoRouterState state) {
            final String? spotIdParam = state.pathParameters['spotId'];
            final int spotId = int.tryParse(spotIdParam ?? '') ?? 0;
            final Object? extra = state.extra;
            final List<String> selectedStatusIds =
                extra is List<String> ? extra : const <String>[];

            return SpotDetailReviewPage(
              spotId: spotId,
              selectedStatusIds: selectedStatusIds,
            );
          },
        ),
        GoRoute(
          path: SGRoute.spotVideoDetail.route,
          builder: (BuildContext context, GoRouterState state) {
            final Object? extra = state.extra;
            if (extra is! SpotVideoDetailArgs) {
              return const SpotVideoDetailPage(
                args: SpotVideoDetailArgs(
                  spotName: '',
                  videos: <SpotVideoDetailItem>[],
                ),
              );
            }

            return SpotVideoDetailPage(args: extra);
          },
        ),
        GoRoute(
          path: '${SGRoute.uploadVideo.route}/:spotId',
          builder: (BuildContext context, GoRouterState state) {
            final String? spotIdParam = state.pathParameters['spotId'];
            final int spotId = int.tryParse(spotIdParam ?? '') ?? 0;
            return UploadVideoPage(spotId: spotId);
          },
        ),
        GoRoute(
            path: SGRoute.dev.route,
            builder: (BuildContext context, GoRouterState state) =>
                const DevPage()),
      ],
    );
