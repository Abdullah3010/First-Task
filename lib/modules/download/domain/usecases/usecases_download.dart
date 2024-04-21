import 'package:first_task/modules/download/domain/usecases/usecase_download_file.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UsecasesDownload {
  final UsecaseDownloadFile downloadFile = Modular.get<UsecaseDownloadFile>();
}
