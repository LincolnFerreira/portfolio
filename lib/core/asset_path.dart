class AssetPaths {
  // Caminhos para a pasta skills
  static const String _skillsPath = 'assets/skills';

  // Subpastas
  static const String _cloudPath = '$_skillsPath/cloud';
  static const String _databasesPath = '$_skillsPath/databases';
  static const String _frameworksPath = '$_skillsPath/frameworks';
  static const String _toolsPath = '$_skillsPath/tools';
  static const String _languagesPath = '$_skillsPath/languages';

  // Imagens da subpasta cloud
  static const String awsOriginal = '$_cloudPath/amazon-black.png';
  static const String awsPlain = '$_cloudPath/amazon-orange.png';
  static const String googleCloud = '$_cloudPath/googlecloud.png';

  // Imagens da subpasta tools
  static const String dart = '$_languagesPath/dart.png';
  static const String typescript = '$_languagesPath/typescript.png';

  // Imagens da subpasta databases
  static const String mysqlOriginalWordmark =
      '$_databasesPath/mysql-original-wordmark.png';
  static const String mysqlOriginal = '$_databasesPath/mysql-original.png';
  static const String postgresqlOriginalWordmark =
      '$_databasesPath/postgresql-original-wordmark.png';
  static const String postgresql = '$_databasesPath/postgresql.png';

  // Imagens da subpasta frameworks
  static const String flutter = '$_frameworksPath/flutter.png';
  static const String node = '$_frameworksPath/nodejs-original-wordmark.png';
  static const String react = '$_frameworksPath/react-original-wordmark.png';

  static const String docker = '$_toolsPath/docker-original-wordmark.png';
  static const String postman = '$_toolsPath/postman-original-wordmark.png';
  static const String jira = '$_toolsPath/jira-original-wordmark.png';
  static const String trello = '$_toolsPath/trello-original-wordmark.png';
}
