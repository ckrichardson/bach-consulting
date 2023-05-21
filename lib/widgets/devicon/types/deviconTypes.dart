const String deviconBaseRoute = 'assets/devicons/';

class DevIconType {
  final String name;
  final String path;

  const DevIconType({required this.name, required this.path});
}

class DevIconNames {
  static const String aws = 'AWS';
  static const String angular = 'Angular';
  static const String azure = 'Azure';
  static const String bitbucket = 'BitBucket';
  static const String css = 'CSS';
  static const String dart = 'Dart';
  static const String flutter = 'Flutter';
  static const String git = 'Git';
  static const String github = 'GitHub';
  static const String go = 'Go';
  static const String html = 'HTML';
  static const String ionic = 'Ionic';
  static const String javascript = 'JavaScript';
  static const String nodejs = 'NodeJS';
  static const String python = 'Python';
  static const String react = 'React';
  static const String typescript = 'TypeScript';
}

class DevIconPaths {
  static const String aws = 'amazonwebservices-original.svg';
  static const String angular = 'angularjs-plain.svg';
  static const String azure = 'azure-original.svg';
  static const String bitbucket = 'bitbucket-original.svg';
  static const String css = 'css3-original.svg';
  static const String dart = 'dart-plain.svg';
  static const String flutter = 'flutter-original.svg';
  static const String git = 'git-original.svg';
  static const String github = 'github-original.svg';
  static const String go = 'go-original-wordmark.svg';
  static const String html = 'html5-original.svg';
  static const String ionic = 'ionic-original.svg';
  static const String javascript = 'javascript-original.svg';
  static const String nodejs = 'nodejs-original.svg';
  static const String python = 'python-original.svg';
  static const String react = 'react-original.svg';
  static const String typescript = 'typescript-original.svg';
}

class DevIcons {
  static const DevIconType aws =
      DevIconType(name: DevIconNames.aws, path: DevIconPaths.aws);
  static const DevIconType angular =
      DevIconType(name: DevIconNames.angular, path: DevIconPaths.angular);
  static const DevIconType azure =
      DevIconType(name: DevIconNames.azure, path: DevIconPaths.azure);
  static const DevIconType bitbucket =
      DevIconType(name: DevIconNames.bitbucket, path: DevIconPaths.bitbucket);
  static const DevIconType css =
      DevIconType(name: DevIconNames.css, path: DevIconPaths.css);
  static const DevIconType dart =
      DevIconType(name: DevIconNames.dart, path: DevIconPaths.dart);
  static const DevIconType flutter =
      DevIconType(name: DevIconNames.flutter, path: DevIconPaths.flutter);
  static const DevIconType git =
      DevIconType(name: DevIconNames.git, path: DevIconPaths.git);
  static const DevIconType github =
      DevIconType(name: DevIconNames.github, path: DevIconPaths.github);
  static const DevIconType go =
      DevIconType(name: DevIconNames.go, path: DevIconPaths.go);
  static const DevIconType html =
      DevIconType(name: DevIconNames.html, path: DevIconPaths.html);
  static const DevIconType ionic =
      DevIconType(name: DevIconNames.ionic, path: DevIconPaths.ionic);
  static const DevIconType javascript =
      DevIconType(name: DevIconNames.javascript, path: DevIconPaths.javascript);
  static const DevIconType nodejs =
      DevIconType(name: DevIconNames.nodejs, path: DevIconPaths.nodejs);
  static const DevIconType python =
      DevIconType(name: DevIconNames.python, path: DevIconPaths.python);
  static const DevIconType react =
      DevIconType(name: DevIconNames.react, path: DevIconPaths.react);
  static const DevIconType typescript =
      DevIconType(name: DevIconNames.typescript, path: DevIconPaths.typescript);
}
