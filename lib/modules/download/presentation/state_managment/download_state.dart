part of 'download_cubit.dart';

@immutable
sealed class DownloadState {}

final class DownloadInitial extends DownloadState {}

final class DownloadLoading extends DownloadState {}

final class DownloadProgressChange extends DownloadState {}

final class DownloadSuccess extends DownloadState {}

final class DownloadError extends DownloadState {}
