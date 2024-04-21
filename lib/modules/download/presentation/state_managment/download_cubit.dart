import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'download_state.dart';

class DownloadCubit extends Cubit<DownloadState> {
  final DownloadCubit usecasesCharacters;

  DownloadCubit({
    required this.usecasesCharacters,
  }) : super(DownloadInitial());
}
