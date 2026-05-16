import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../router/app_router.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({super.key});

  @override
  State<LoadPage> createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  static const List<Permission> _requiredPermissions = <Permission>[
    Permission.locationWhenInUse,
    Permission.camera,
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _requestPermissionsAndNavigate());
  }

  Future<void> _requestPermissionsAndNavigate() async {
    await _requiredPermissions.request();
    if (!mounted) {
      return;
    }
    context.go(SGRoute.dev.route);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SizedBox.shrink());
  }
}
