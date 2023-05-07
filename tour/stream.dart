///https://dart.cn/guides/libraries/library-tour#stream
import 'dart:async';
import 'dart:io';

Future<void> searchFile(File file, List<String> searchTerms) async {
  final completer = Completer<void>();
  StreamSubscription subscription;
  subscription = file.openRead().listen((data) {
    final content = String.fromCharCodes(data);
    if (searchTerms.any((term) => content.contains(term))) {
      print('Found match in file: ${file.path}');
      completer.complete();
    }
  }, onDone: () {
    completer.complete();
  }, onError: (error) {
    completer.completeError(error);
  });

  return completer.future;
}

Future<void> main(List<String> arguments) async {
  final searchPath = arguments[0];
  final searchTerms = arguments.sublist(1);

  FileSystemEntity.isDirectory(searchPath).then((isDir) {
    if (isDir) {
      final startingDir = Directory(searchPath);
      startingDir.list().listen((entity)  //异步循环： await for (final entity in startingDir.list())
       {
        if (entity is File) {
          searchFile(entity, searchTerms);
        }
      });
    } else {
      searchFile(File(searchPath), searchTerms);
    }
  });
}