import 'package:adapt_size/adapt_size_init.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';

void main() {
  testWidgets('AdaptSizeInit should initialize correctly', (tester) async {
    final testWidget = Builder(
      builder: (context) {
        AdaptSizeInit.init(context, designSize: const Size(360, 690));
        return const SizedBox();
      },
    );

    await tester.pumpWidget(
      WidgetsApp(
        color: const Color(0xFFFFFFFF),
        builder: (_, __) => testWidget,
      ),
    );

    expect(AdaptSizeInit.isInitialized, isTrue);
    expect(AdaptSizeInit.screenWidth, greaterThan(0));
    expect(AdaptSizeInit.screenHeight, greaterThan(0));
  });
}