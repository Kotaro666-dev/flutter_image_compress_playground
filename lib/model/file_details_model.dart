import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_details_model.freezed.dart';

@freezed
abstract class FileDetailsModel with _$FileDetailsModel {
  const factory FileDetailsModel({
    @Default('') String fileName,
    Uint8List? bytes,
    @Default(0) int size,
    String? extension,
    String? mimeType,
    String? contentType,
  }) = _FileDetailsModel;
}
