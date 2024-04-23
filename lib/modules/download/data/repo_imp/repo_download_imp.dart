import 'package:background_downloader/background_downloader.dart';
import 'package:first_task/core/extension/string_extension.dart';
import 'package:first_task/modules/download/data/sources/remote_data_source/remote_download.dart';
import 'package:first_task/modules/download/domain/repos/repo_download.dart';
import 'package:flutter/material.dart';

class RepoDownloadImp implements RepoDownload {
  final RemoteDownload remoteDownload;

  RepoDownloadImp({
    required this.remoteDownload,
  });

  @override
  Future<bool> downloadFile(String url) async {
    try {
      await requestNotificationPermission();

      final DownloadTask task = DownloadTask(
        url: url,
        filename: url.getFileName(),
        directory: 'my_sub_directory',
        updates: Updates.statusAndProgress,
        retries: 5,
        allowPause: true,
      );
      FileDownloader().enqueue(
        task,
      );

      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future<void> requestNotificationPermission() async {
    var status = await FileDownloader().permissions.status(PermissionType.notifications);
    if (status != PermissionStatus.granted) {
      if (await FileDownloader().permissions.shouldShowRationale(PermissionType.notifications)) {
        debugPrint('Showing some rationale');
      }
      status = await FileDownloader().permissions.request(PermissionType.notifications);
      debugPrint('Permission for $PermissionType.notifications was $status');
    }
  }
}
