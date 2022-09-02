import 'dart:math';
import 'package:dart_frog/dart_frog.dart';
import 'package:gde_frog/lib.dart';

/// Generate a string with format like Generally Decent Engineer
/// ie: adverb starts with G + adjective starts with D + 'Engineer'
Response onRequest(RequestContext context) {
  final adverb = adverbs[Random().nextInt(adverbs.length - 1)];

  return Response(
    body: adverb.capitalize(),
  );
}
