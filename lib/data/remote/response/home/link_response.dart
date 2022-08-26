import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koperasi/domain/entities/home/link.dart';

part 'link_response.freezed.dart';
part 'link_response.g.dart';

@freezed
class LinkResponse with _$LinkResponse {
  const LinkResponse._();

  const factory LinkResponse({
    required String? url,
    required String? label,
    required bool? active,
  }) = _LinkResponse;

  factory LinkResponse.fromJson(Map<String, dynamic> json) => _$LinkResponseFromJson(json);

  Link toDomain() => Link(
        url: url,
        label: label,
        active: active,
      );
}
