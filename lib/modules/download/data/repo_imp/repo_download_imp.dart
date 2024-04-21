import 'package:first_task/modules/download/data/sources/remote_data_source/remote_download.dart';
import 'package:first_task/modules/download/domain/repos/repo_download.dart';

class RepoDownloadImp implements RepoDownload {
  final RemoteDownload remoteDownload;

  RepoDownloadImp({
    required this.remoteDownload,
  });

  @override
  Future<bool> downloadFile(String url) {
    // TODO: implement downloadFile
    throw UnimplementedError();
  }
}
