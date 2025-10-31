import 'package:flutter/material.dart';
import 'package:summer_flutter/core/page_loader.dart';

class LoadingOverlayScaffold extends StatelessWidget {
  const LoadingOverlayScaffold({
    super.key,
    required this.isLoading,
    required this.child,
  });
  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [child, if (isLoading) PageLoaderOverlay()],
    );
  }
}
