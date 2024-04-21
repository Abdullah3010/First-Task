import 'package:first_task/modules/download/data/repo_imp/repo_download_imp.dart';
import 'package:first_task/modules/download/data/sources/remote_data_source/remote_download.dart';
import 'package:first_task/modules/download/data/sources/remote_data_source/remote_download_imp.dart';
import 'package:first_task/modules/download/domain/repos/repo_download.dart';
import 'package:first_task/modules/download/domain/usecases/usecase_download_file.dart';
import 'package:first_task/modules/download/domain/usecases/usecases_download.dart';
import 'package:first_task/modules/download/presentation/state_managment/download_cubit.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BindDownload {
  static void binds(Injector i) {
    /// Start [Download] dependencies.

    /// [Data Sources]
    i.add<RemoteDownload>(RemoteDownloadImp.new);

    /// [Repo]
    i.add<RepoDownload>(RepoDownloadImp.new);

    /// [Usecases]
    i.add(UsecaseDownloadFile.new);
    i.add(UsecasesDownload.new);

    /// [State Managment]
    i.addLazySingleton<DownloadCubit>(DownloadCubit.new);

    /// End [Download] dependencies.
    /// [=================================================] ///
  }
}
