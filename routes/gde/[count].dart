import 'dart:math';
import 'package:dart_frog/dart_frog.dart';
import 'package:gde_frog/lib.dart';

/// Generate a string with format like Generally Decent Engineer
/// ie: adverb starts with G + adjective starts with D + 'Engineer'
Response onRequest(RequestContext context, String count) {
  return Response(
    body: List.generate(
      (int.tryParse(count) ?? 1).clamp(1, 1000),
      (_) {
        final adverb = adverbs[Random().nextInt(adverbs.length)];
        final adjective = adjectives[Random().nextInt(adjectives.length)];
        return '${adverb.capitalize()} ${adjective.capitalize()} Engineer';
      },
    ).join('\n'),
  );
}
