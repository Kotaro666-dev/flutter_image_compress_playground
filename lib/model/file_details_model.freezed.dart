// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FileDetailsModel {
  String get fileName => throw _privateConstructorUsedError;
  Uint8List? get bytes => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String? get extension => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileDetailsModelCopyWith<FileDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileDetailsModelCopyWith<$Res> {
  factory $FileDetailsModelCopyWith(
          FileDetailsModel value, $Res Function(FileDetailsModel) then) =
      _$FileDetailsModelCopyWithImpl<$Res, FileDetailsModel>;
  @useResult
  $Res call(
      {String fileName,
      Uint8List? bytes,
      int size,
      String? extension,
      String? mimeType,
      String? contentType});
}

/// @nodoc
class _$FileDetailsModelCopyWithImpl<$Res, $Val extends FileDetailsModel>
    implements $FileDetailsModelCopyWith<$Res> {
  _$FileDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? bytes = freezed,
    Object? size = null,
    Object? extension = freezed,
    Object? mimeType = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileDetailsModelImplCopyWith<$Res>
    implements $FileDetailsModelCopyWith<$Res> {
  factory _$$FileDetailsModelImplCopyWith(_$FileDetailsModelImpl value,
          $Res Function(_$FileDetailsModelImpl) then) =
      __$$FileDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fileName,
      Uint8List? bytes,
      int size,
      String? extension,
      String? mimeType,
      String? contentType});
}

/// @nodoc
class __$$FileDetailsModelImplCopyWithImpl<$Res>
    extends _$FileDetailsModelCopyWithImpl<$Res, _$FileDetailsModelImpl>
    implements _$$FileDetailsModelImplCopyWith<$Res> {
  __$$FileDetailsModelImplCopyWithImpl(_$FileDetailsModelImpl _value,
      $Res Function(_$FileDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? bytes = freezed,
    Object? size = null,
    Object? extension = freezed,
    Object? mimeType = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_$FileDetailsModelImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FileDetailsModelImpl
    with DiagnosticableTreeMixin
    implements _FileDetailsModel {
  const _$FileDetailsModelImpl(
      {this.fileName = '',
      this.bytes,
      this.size = 0,
      this.extension,
      this.mimeType,
      this.contentType});

  @override
  @JsonKey()
  final String fileName;
  @override
  final Uint8List? bytes;
  @override
  @JsonKey()
  final int size;
  @override
  final String? extension;
  @override
  final String? mimeType;
  @override
  final String? contentType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileDetailsModel(fileName: $fileName, bytes: $bytes, size: $size, extension: $extension, mimeType: $mimeType, contentType: $contentType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileDetailsModel'))
      ..add(DiagnosticsProperty('fileName', fileName))
      ..add(DiagnosticsProperty('bytes', bytes))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('extension', extension))
      ..add(DiagnosticsProperty('mimeType', mimeType))
      ..add(DiagnosticsProperty('contentType', contentType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileDetailsModelImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            const DeepCollectionEquality().equals(other.bytes, bytes) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fileName,
      const DeepCollectionEquality().hash(bytes),
      size,
      extension,
      mimeType,
      contentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileDetailsModelImplCopyWith<_$FileDetailsModelImpl> get copyWith =>
      __$$FileDetailsModelImplCopyWithImpl<_$FileDetailsModelImpl>(
          this, _$identity);
}

abstract class _FileDetailsModel implements FileDetailsModel {
  const factory _FileDetailsModel(
      {final String fileName,
      final Uint8List? bytes,
      final int size,
      final String? extension,
      final String? mimeType,
      final String? contentType}) = _$FileDetailsModelImpl;

  @override
  String get fileName;
  @override
  Uint8List? get bytes;
  @override
  int get size;
  @override
  String? get extension;
  @override
  String? get mimeType;
  @override
  String? get contentType;
  @override
  @JsonKey(ignore: true)
  _$$FileDetailsModelImplCopyWith<_$FileDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
