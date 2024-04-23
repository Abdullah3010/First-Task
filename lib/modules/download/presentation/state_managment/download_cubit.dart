import 'package:background_downloader/background_downloader.dart';
import 'package:bloc/bloc.dart';
import 'package:first_task/modules/download/domain/usecases/usecases_download.dart';
import 'package:flutter/material.dart';

part 'download_state.dart';

class DownloadCubit extends Cubit<DownloadState> {
  final UsecasesDownload usecasesDownload;

  DownloadCubit({
    required this.usecasesDownload,
  }) : super(DownloadInitial());

  double progress = 0.0;

  Future<void> downloadFile(String url) async {
    try {
      emit(DownloadLoading());

      usecasesDownload.downloadFile(url).then((value) {});
    } catch (e) {
      debugPrint(e.toString());
      emit(DownloadError());
    }
  }

  void updateProgress() {
    FileDownloader().updates.listen(
      (update) {
        switch (update) {
          case TaskStatusUpdate():
            switch (update.status) {
              case TaskStatus.complete:
                progress = 0.0;
                emit(DownloadSuccess());
              case TaskStatus.canceled:
                emit(DownloadError());

              default:
                emit(DownloadLoading());
            }

          case TaskProgressUpdate():
            progress = update.progress;
            if (progress > 0.0 && progress < 1.0) {
              emit(DownloadProgressChange());
            }
        }
      },
    );
  }
}
