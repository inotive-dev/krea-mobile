import 'package:freezed_annotation/freezed_annotation.dart';

part 'link.freezed.dart';

@freezed
class Link with _$Link {
  const factory Link({
    required String? url,
    required String? label,
    required bool? active,
  }) = _Link;
}
