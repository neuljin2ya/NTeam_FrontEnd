import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../router/app_router.dart';
import '../../../../config/theme/figma_colors.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({super.key});

  @override
  State<LoadPage> createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  static const List<Permission> _requiredPermissions = <Permission>[
    Permission.locationWhenInUse,
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _requestPermissionsAndNavigate());
  }

  Future<void> _requestPermissionsAndNavigate() async {
    await _requiredPermissions.request();
    await Future<void>.delayed(const Duration(seconds: 2));
    if (!mounted) {
      return;
    }
    context.go(SGRoute.login.route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FigmaColors.black,
      body: Center(
        child: SvgPicture.asset(
          'assets/logo.svg',
          width: 256,
          height: 256,
        ),
      ),
    );
  }
}
