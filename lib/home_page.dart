import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_image_compress_playground/model/file_details_model.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter_image_compress playground'),
      ),
      body: const _Body(),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  File? _targetFile;
  FileDetailsModel _fileDetailsBeforeCompression = const FileDetailsModel();
  FileDetailsModel _fileDetailsAfterCompression = const FileDetailsModel();

  Future<void> _chooseSingleImage() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null) {
      final file = result.files.first;
      final mimeType = file.path != null ? lookupMimeType(file.path!) : null;
      final contentType = mimeType != null ? MediaType.parse(mimeType) : null;
      final newFileDetails = FileDetailsModel(
        fileName: file.name,
        bytes: file.bytes,
        size: file.size,
        extension: file.extension,
        mimeType: mimeType,
        contentType: contentType.toString(),
      );

      // TODO: Check content type to allow only jepg, png and heic

      setState(() {
        _targetFile = File(result.files.first.path!);
        _fileDetailsBeforeCompression = newFileDetails;
      });
    } else {
      debugPrint('User didn\'t choose single file');
    }
  }

  Future<void> _compressImage() async {
    if (_targetFile == null) {
      return;
    }

    try {
      final result = await FlutterImageCompress.compressWithFile(
        _targetFile!.absolute.path,
        quality: 85,
      );
      if (result == null) {
        debugPrint('Compression failed');
      }

      _extractFileData(raw: result!);
      // TODO: Update state
    } on Error catch (e) {
      debugPrint(e.toString());
      debugPrint(e.stackTrace.toString());
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  void _extractFileData({
    required Uint8List raw,
  }) async {
    final decodeImage = await decodeImageFromList(raw);
    final width = decodeImage.width;
    final height = decodeImage.height;
    final bytes = raw.lengthInBytes;
    final sizeKB = bytes / 1024;
    final sizeMB = sizeKB / 1024;
    debugPrint('sizeKB = $sizeKB');
    debugPrint('sizeMB = $sizeMB');
  }

  void _resetData() {
    setState(() {
      _fileDetailsBeforeCompression = const FileDetailsModel();
      _fileDetailsAfterCompression = const FileDetailsModel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _chooseSingleImage,
              child: const Text('Choose single image'),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: FileDetails(
            title: 'Before compression',
            fileDetailsModel: _fileDetailsBeforeCompression,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _compressImage,
              child: const Text('Compress Image'),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: FileDetails(
            title: 'After compression',
            fileDetailsModel: _fileDetailsAfterCompression,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _resetData,
              child: const Text('Reset'),
            ),
          ],
        ),
      ],
    );
  }
}

class FileDetails extends StatelessWidget {
  const FileDetails({
    required String title,
    required FileDetailsModel fileDetailsModel,
    super.key,
  })  : _title = title,
        _fileDetailsModel = fileDetailsModel;

  final String _title;

  final FileDetailsModel _fileDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('File name: ${_fileDetailsModel.fileName}'),
              Text('File bytes: ${_fileDetailsModel.bytes}'),
              Text('File size: ${_fileDetailsModel.size}'),
              Text('File extension: ${_fileDetailsModel.extension}'),
              Text('File MIME type: ${_fileDetailsModel.mimeType}'),
              Text('File Content-type: ${_fileDetailsModel.contentType}'),
            ],
          ),
        )
      ],
    );
  }
}
