import 'package:first_task/core/extension/color_extension.dart';
import 'package:first_task/core/extension/context_extension.dart';
import 'package:first_task/core/extension/text_theme_extension.dart';
import 'package:first_task/modules/download/presentation/state_managment/download_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:first_task/core/widgets/w_shared_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SNDownload extends StatefulWidget {
  const SNDownload({super.key});

  @override
  State<SNDownload> createState() => _SNDownloadState();
}

class _SNDownloadState extends State<SNDownload> {
  final DownloadCubit cubit = Modular.get<DownloadCubit>();

  @override
  void initState() {
    super.initState();
    cubit.updateProgress();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DownloadCubit>(
      create: (context) => cubit,
      child: BlocBuilder<DownloadCubit, DownloadState>(
        builder: (context, state) {
          return WSharedScaffold(
            withBackButton: false,
            title: 'Download',
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (state is DownloadError) ...{
                  Text(
                    'Download Error',
                    style: context.textTheme.titleMedium_28,
                  )
                },
                if (state is DownloadSuccess) ...{
                  Text(
                    'Download Success',
                    style: context.textTheme.titleMedium_28,
                  )
                },
                if (state is DownloadLoading || state is DownloadProgressChange) ...{
                  SizedBox(
                    width: 150.w,
                    height: 150.h,
                    child: CircularProgressIndicator(
                      color: context.theme.colorScheme.primaryColor600,
                      value: cubit.progress,
                      backgroundColor: context.theme.colorScheme.naturalColor0,
                      strokeWidth: 20.w,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Progress: ${(cubit.progress * 100).toStringAsFixed(2)}%',
                    style: context.textTheme.titleMedium_16,
                  ),
                },
                SizedBox(height: 40.h),
                InkWell(
                  onTap: () {
                    cubit.downloadFile(
                        'https://file-examples.com/storage/fee868065066261f19c04c3/2017/04/file_example_MP4_480_1_5MG.mp4');
                  },
                  child: Container(
                    width: 150.w,
                    height: 50.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 5.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: context.theme.colorScheme.primaryColor600,
                    ),
                    child: Center(
                      child: Text(
                        'Download',
                        style: context.textTheme.titleMedium_16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
