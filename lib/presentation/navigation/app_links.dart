/// Definition for [AppLinks].
class AppLinks {
  ///
  static const _parameter = '{}';

  /// Example: video/sm2qbmdTtrUrJzvgZuSBbpXj
  static const video = 'video/$_parameter';
}

extension CompareUriPath on String {
  bool match(Uri uri) {
    final paths = split('/');
    final uriPaths = uri.pathSegments;

    if (paths.isEmpty || uriPaths.isEmpty || paths.length != uriPaths.length) {
      return false;
    }

    for (var index = 0; index < paths.length; index++) {
      if (paths[index] == AppLinks._parameter) {
        continue;
      }

      if (paths[index] != uriPaths[index]) {
        return false;
      }
    }

    return true;
  }
}
