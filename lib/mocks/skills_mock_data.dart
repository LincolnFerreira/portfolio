import 'package:portfolio/core/asset_path.dart';
import 'package:portfolio/core/entities/skill.dart';

final List<Skill> skillsMock = [
  Skill(
    title: 'Linguagens',
    paths: [
      AssetPaths.dart,
      AssetPaths.typescript,
    ],
  ),
  Skill(
    title: 'Frameworks',
    paths: [
      AssetPaths.flutter,
      AssetPaths.react,
      AssetPaths.node,
    ],
  ),
  Skill(
    title: 'Bancos de Dados',
    paths: [
      AssetPaths.mysqlOriginalWordmark,
      AssetPaths.postgresqlOriginalWordmark,
    ],
  ),
  Skill(
    title: 'Cloud Computing',
    paths: [
      AssetPaths.awsOriginal,
      AssetPaths.awsPlain,
      AssetPaths.googleCloud,
    ],
  ),
  Skill(
    title: 'Ferramentas',
    paths: [
      AssetPaths.docker,
      AssetPaths.postman,
      AssetPaths.jira,
      AssetPaths.trello,
    ],
  ),
];
