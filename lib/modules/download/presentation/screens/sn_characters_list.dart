import 'package:first_task/modules/download/presentation/state_managment/download_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:first_task/core/widgets/w_no_data.dart';
import 'package:first_task/core/widgets/w_shared_scaffold.dart';

class SNDownloadList extends StatelessWidget {
  SNDownloadList({super.key});

  final DownloadCubit cubit = Modular.get<DownloadCubit>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<DownloadCubit>(
      create: (context) => cubit,
      child: BlocBuilder<DownloadCubit, DownloadState>(
        builder: (context, state) {
          return WSharedScaffold(
            withBackButton: false,
            title: 'Download',
            isLoading: state is DownloadLoading,
            body: const WNoData(),
          );
        },
      ),
    );
  }
}
