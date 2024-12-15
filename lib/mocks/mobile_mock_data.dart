import 'package:portfolio/components/mobile_session.dart';
import 'package:portfolio/core/asset_path.dart';

final items = [
  MobileItemData(
    id: '2',
    architectureText:
        'Lorem Ipsum dolor sit amet, consectetur adipiscing elit.',
    listMobileInformationData: [
      MobileInformationData(
        title: "Projeto", // Título atualizado
        description: "UI/UX",
        iconPath: "assets/Orion_code-fork.svg",
        onTap: () => print("Clicou no Detalhe Design"),
      ),
      MobileInformationData(
        title: "Arquitetura", // Título atualizado
        description: "Tech components",
        iconPath: "assets/Orion_code-fork.svg",
        onTap: () => print("Clicou no Detalhe Stack"),
      ),
      MobileInformationData(
        title: "Stack", // Título atualizado
        description: "Key features",
        iconPath: "assets/Orion_code-fork.svg",
        onTap: () => print("Clicou no Detalhe Features"),
        imagesPath: [
          AssetPaths.dart,
          AssetPaths.typescript,
          AssetPaths.flutter,
        ],
      ),
    ],
    iconPath: 'assets/Orion_code-fork.svg',
    imagePath: 'assets/resilience.svg',
    onTap1: () => print('Projeto - Ação 1'),
    onTap2: () => print('Projeto - Ação 2'),
    onTap3: () => print('Projeto - Ação 3'),
    onTap4: () => print('Projeto - Ação 4'),
  ),
  MobileItemData(
    id: '3',
    architectureText:
        'Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.',
    listMobileInformationData: [
      MobileInformationData(
        title: "Projeto", // Título atualizado
        description: "Project Overview",
        iconPath: "assets/Orion_code-fork.svg",
        onTap: () => print("Clicou no Detalhe Overview"),
      ),
      MobileInformationData(
        title: "Arquitetura", // Título atualizado
        description: "Development Process",
        iconPath: "assets/Orion_code-fork.svg",
        onTap: () => print("Clicou no Detalhe Development"),
      ),
      MobileInformationData(
        title: "Stack", // Título atualizado
        description: "Launch Plan",
        iconPath: "assets/Orion_code-fork.svg",
        onTap: () => print("Clicou no Detalhe Launch"),
        imagesPath: [
          AssetPaths.dart,
          AssetPaths.dart,
          AssetPaths.dart,
        ],
      ),
    ],
    iconPath: 'assets/Orion_code-fork.svg',
    imagePath: 'assets/resilience.svg',
    onTap1: () => print('Projeto - Ação 1'),
    onTap2: () => print('Projeto - Ação 2'),
    onTap3: () => print('Projeto - Ação 3'),
    onTap4: () => print('Projeto - Ação 4'),
  ),
  MobileItemData(
    id: '4',
    architectureText:
        'Suspendisse potenti. Donec sit amet ligula id augue aliquam vehicula.',
    listMobileInformationData: [
      MobileInformationData(
        title: "Projeto", // Título atualizado
        description: "Main objectives",
        iconPath: "assets/Orion_code-fork.svg",
        onTap: () => print("Clicou no Detalhe Goals"),
      ),
      MobileInformationData(
        title: "Arquitetura", // Título atualizado
        description: "Team Members",
        iconPath: "assets/Orion_code-fork.svg",
        onTap: () => print("Clicou no Detalhe Team"),
      ),
      MobileInformationData(
        title: "Stack", // Título atualizado
        description: "Project Timeline",
        iconPath: "assets/Orion_code-fork.svg",
        onTap: () => print("Clicou no Detalhe Timeline"),
        imagesPath: [
          AssetPaths.dart,
          AssetPaths.typescript,
          AssetPaths.docker,
        ],
      ),
    ],
    iconPath: 'assets/Orion_code-fork.svg',
    imagePath: 'assets/resilience.svg',
    onTap1: () => print('Projeto - Ação 1'),
    onTap2: () => print('Projeto - Ação 2'),
    onTap3: () => print('Projeto - Ação 3'),
    onTap4: () => print('Projeto - Ação 4'),
  ),
  MobileItemData(
    id: '5',
    architectureText:
        'Morbi non ligula vel felis vulputate fermentum a non enim.',
    listMobileInformationData: [
      MobileInformationData(
        title: "Projeto", // Título atualizado
        description: "Project Planning",
        iconPath: "assets/Orion_code-fork.svg",
        onTap: () => print("Clicou no Detalhe Planning"),
      ),
      MobileInformationData(
        title: "Arquitetura", // Título atualizado
        description: "Implementation Details",
        iconPath: "assets/Orion_code-fork.svg",
        onTap: () => print("Clicou no Detalhe Implementation"),
      ),
      MobileInformationData(
        title: "Stack", // Título atualizado
        description: "Quality Testing",
        iconPath: "assets/Orion_code-fork.svg",
        onTap: () => print("Clicou no Detalhe Testing"),
      ),
    ],
    iconPath: 'assets/Orion_code-fork.svg',
    imagePath: 'assets/resilience.svg',
    onTap1: () => print('Projeto - Ação 1'),
    onTap2: () => print('Projeto - Ação 2'),
    onTap3: () => print('Projeto - Ação 3'),
    onTap4: () => print('Projeto - Ação 4'),
  ),
  MobileItemData(
    id: '6',
    architectureText:
        'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.',
    listMobileInformationData: [
      MobileInformationData(
        title: "Projeto", // Título atualizado
        description: "UI Concepts",
        iconPath: "assets/Orion_code-fork.svg",
        onTap: () => print("Clicou no Detalhe Initial Design"),
      ),
      MobileInformationData(
        title: "Arquitetura", // Título atualizado
        description: "Backend Architecture",
        iconPath: "assets/Orion_code-fork.svg",
        onTap: () => print("Clicou no Detalhe Backend"),
      ),
      MobileInformationData(
        title: "Stack", // Título atualizado
        description: "Final Deployment",
        iconPath: "assets/Orion_code-fork.svg",
        onTap: () => print("Clicou no Detalhe Deployment"),
      ),
    ],
    iconPath: 'assets/Orion_code-fork.svg',
    imagePath: 'assets/resilience.svg',
    onTap1: () => print('Projeto - Ação 1'),
    onTap2: () => print('Projeto - Ação 2'),
    onTap3: () => print('Projeto - Ação 3'),
    onTap4: () => print('Projeto - Ação 4'),
  ),
];
