class Project {
  final String title;
  final String description;
  final String imagePath;
  final String tags;
  final String architectureImage;
  final List<String> techStack;

  Project({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.tags,
    required this.architectureImage,
    required this.techStack,
  });
}

final List<Project> projects = [
  Project(
    title: 'SafeFood',
    description:
        'A Safe Food é um app para ajudar pessoas com restrições alimentares...',
    imagePath: 'assets/unnamed.webp',
    tags: 'Dart, Flutter, iOS, Android',
    architectureImage: 'assets/architecture_safefood.png',
    techStack: ['Flutter', 'Dart', 'Firebase'],
  ),
  Project(
    title: 'Outro Projeto',
    description: 'Descrição do segundo projeto...',
    imagePath: 'assets/other_project_screenshot.png',
    tags: 'Flutter, Web, Mobile',
    architectureImage: 'assets/architecture_other.png',
    techStack: ['Flutter', 'Dart', 'Node.js'],
  ),
];
