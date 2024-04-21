import 'package:first_task/core/utils/usecases/base_usecase.dart';
import 'package:first_task/modules/download/domain/repos/repo_download.dart';

class UsecaseDownloadFile extends BaseUseCase<Future<bool>, String> {
  final RepoDownload repo;

  UsecaseDownloadFile({
    required this.repo,
  });

  @override
  Future<bool> call(String input) => repo.downloadFile(input);
}
