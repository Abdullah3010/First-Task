import 'package:first_task/core/services/network/config/base_dio.dart';
import 'package:first_task/modules/download/data/sources/remote_data_source/remote_download.dart';

class RemoteDownloadImp implements RemoteDownload {
  final BaseDio dio;

  RemoteDownloadImp({
    required this.dio,
  });

  @override
  Future<bool> downloadFile(String url) {
    // TODO: implement downloadFile
    throw UnimplementedError();
  }
}
