import 'package:flutter_riverpod/flutter_riverpod.dart';

final productsProvider  = Provider<List<String>>((ref) {
  return ['a', 'b', 'c','d'];
});
