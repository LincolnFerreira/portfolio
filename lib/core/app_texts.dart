class AppTexts {
  // Header section
  static var projects = _HeaderTexts();

  // About Me section
  static var aboutMe = _AboutMeTexts();

  // Contact section
  static var contact = _ContactTexts(); // Corrigido o operador '='
}

class _HeaderTexts {
  final String welcomeMessage = "Bem-vindo ao meu portfólio!";
  final String title = "Projetos";
}

class _AboutMeTexts {
  final String title = "Sobre mim";
  final List<String> description = [
    "Ser programador, para mim, vai além de escrever linhas de código. É transformar e atender necessidades reais, utilizando processos e técnicas que simplificam tarefas e facilitam a vida das pessoas.",
    "Atualmente, trabalho como desenvolvedor mobile e back-end, com uma experiência sólida em Dart/Flutter e Node.js. Nos últimos três anos, tive a oportunidade de desenvolver e manter aplicações que melhoram a gestão de plataformas.",
    "Acredito que a tecnologia deve ser usada para fazer a diferença, e busco aplicar esse pensamento tanto em projetos profissionais quanto pessoais, incluindo meus estudos contínuos.",
  ];
}

class _ContactTexts {
  final String title = "Contato";
}
