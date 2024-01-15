// ignore_for_file: unnecessary_cast

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class SettingsProvider with ChangeNotifier {
  double progressValue = 0.0;
  String downloadMessage = '';
  bool isDownloaded = false;
  String savePath = '';

  Future<void> downloadFile({required String url}) async {
    final String fileUrl = url;

    isDownloaded = false;
    notifyListeners();
    String fileName = fileUrl.split('/').last;

    try {
      Directory? download = await (Platform.isAndroid
          ? getExternalStorageDirectory()
          : getApplicationDocumentsDirectory()) as Directory?;
      if (download == null) {
        throw Exception('External storage directory not found');
      }
      savePath = '${download.path}/$fileName';

      await Dio().download(fileUrl, savePath,
          onReceiveProgress: (int received, int total) {
        var percentage = received / total * 100;
        progressValue = percentage / 100;
        downloadMessage = "Downloading... ${percentage.floor()}%";
        notifyListeners();
      });

      isDownloaded = true;
      progressValue = 0.0;
      notifyListeners();
      debugPrint('File saved to: $savePath');
    } catch (e) {
      debugPrint('Error downloading the file: $e');
    }
  }

  Future<void> openPdfFile() async {
    final result = await File(savePath).exists();
    if (result) {
      final openResult = await OpenFile.open(savePath);
      if (openResult.type == ResultType.error) {
        throw Exception('Could not open file: ${openResult.message}');
      }
    } else {
      throw Exception('File does not exist: $savePath');
    }
  }

  @override
  void dispose() {
    isDownloaded = false;
    downloadMessage = '';
    notifyListeners();
    super.dispose();
  }
}
