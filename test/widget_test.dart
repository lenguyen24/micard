import 'package:flutter_test/flutter_test.dart';
import 'package:lab2_micard/main.dart';

void main() {
  testWidgets('MiCard renders name and contact info smoke test', (WidgetTester tester) async {
    // Build app and trigger frame
    await tester.pumpWidget(const MiCardApp());

    // Verify that student name and developer role are rendered
    expect(find.text('Lê Hữu Nguyên'), findsOneWidget);
    expect(find.text('Mobile Developer'), findsOneWidget);
    expect(find.text('+84 965847377'), findsOneWidget);
    expect(find.text('nguyenlh.23it@vku.udn.vn'), findsOneWidget);
  });
}
