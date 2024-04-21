class RoutesNames {
  static String get appInit => '/';
  static String get connectionError => '/connection-error';
  static final DownloadRoutes characters = DownloadRoutes();
}

class DownloadRoutes {
  String get download => '/download';
}
