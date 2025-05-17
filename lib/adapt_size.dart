import 'package:adapt_size/adapt_size_init.dart';
import 'package:adapt_size/device_type.dart';
import 'package:flutter/material.dart';

export 'adapt_size_init.dart';
export 'device_type.dart';
export 'extension.dart';

class AdaptSize extends StatefulWidget {
  final Widget Function(BuildContext context) builder;
  final Size designSize;

  const AdaptSize({
    super.key,
    required this.builder,
    this.designSize = const Size(360, 690),
  });

  @override
  State<AdaptSize> createState() => _AdaptSizeState();
}

class _AdaptSizeState extends State<AdaptSize> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final media = MediaQuery.of(context);
    final isLandscape = media.orientation == Orientation.landscape;

    final designSize = isLandscape
        ? Size(widget.designSize.height, widget.designSize.width)
        : widget.designSize;

    AdaptSizeInit.init(context, designSize: designSize);
    AdaptDeviceType.init(AdaptSizeInit.screenWidth);
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context);
  }
}
