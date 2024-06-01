// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:portfolio/colors_app.dart';
import 'package:portfolio/widgets/card_logos.dart';
import 'package:portfolio/widgets/menu.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isMobile = constraints.maxWidth < 850;

        return Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(35, 35, 40, 0.941),
                  Color.fromRGBO(27, 27, 31, 0.624),
                ],
                stops: [0.7, 1.0],
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 260.0),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(35, 35, 40, 0.941)),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Menu(),
                        const SizedBox(
                          height: 83,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.0),
                          child: Banner(),
                        ),
                        const CarrouselLogo(),
                        const SizedBox(height: 80),
                        TextRenderer(
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          ),
                        ),
                        const HeaderSection(
                          title: 'Projetos',
                          subtitle:
                              'desenvolvimentos onde tive a oportunidade de atuar e adquirir muitos conhecimentos sobre diversas tecnológias, e áreas',
                        ),
                        const SizedBox(height: 40),
                        const WorkSpaceProjects(),
                        const SizedBox(height: 80),
                        const Text(
                          'Um pouco mais sobre o projeto...',
                          style: TextStyle(
                            color: Color.fromRGBO(114, 172, 243, 0.941),
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 600,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child: Container()),
                              Expanded(child: TabBarProjects()),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 80.0, horizontal: 200),
                          child: Column(
                            children: [
                              TitleWithUnderlined(title: 'Habilidades'),
                              Wrap(
                                runSpacing: 60,
                                spacing: 10,
                                children: [
                                  CardHabilits(
                                    title: 'Gerenciamento de estado',
                                    subtitle:
                                        'Conseguir atualizar parte/toda interface de acordo com as necessidades.',
                                    illustrate: Icon(Icons.abc),
                                  ),
                                  CardHabilits(
                                    title: 'Gerenciamento de estado',
                                    subtitle:
                                        'Conseguir atualizar parte/toda interface de acordo com as necessidades.',
                                    illustrate: Icon(Icons.abc),
                                  ),
                                  CardHabilits(
                                    title: 'Gerenciamento de estado',
                                    subtitle:
                                        'Conseguir atualizar parte/toda interface de acordo com as necessidades.',
                                    illustrate: Icon(Icons.abc),
                                  ),
                                  CardHabilits(
                                    title: 'Gerenciamento de estado',
                                    subtitle:
                                        'Conseguir atualizar parte/toda interface de acordo com as necessidades.',
                                    illustrate: Icon(Icons.abc),
                                  ),
                                  CardHabilits(
                                    title: 'Gerenciamento de estado',
                                    subtitle:
                                        'Conseguir atualizar parte/toda interface de acordo com as necessidades.',
                                    illustrate: Icon(Icons.abc),
                                  ),
                                  CardHabilits(
                                    title: 'Gerenciamento de estado',
                                    subtitle:
                                        'Conseguir atualizar parte/toda interface de acordo com as necessidades.',
                                    illustrate: Icon(Icons.abc),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const FooterAboutMore(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class ContainerAboutProfiles extends StatelessWidget {
  final String title;
  final String? subtitle;

  const ContainerAboutProfiles({
    Key? key,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Card(
        child: Column(
          children: [
            ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                title: Text(title),
                subtitle: (subtitle != null)
                    ? Text(
                        subtitle!,
                        style: TextStyle(
                            color: AppColors.primaryColor.withOpacity(0.6)),
                      )
                    : const SizedBox.shrink()),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

final list = [
  const CardLogos(
    imageSource: 'assets/react.svg',
  ),
  const CardLogos(
    imageSource: 'assets/firebase.svg',
  ),
  const CardLogos(
    imageSource: 'assets/flutter.svg',
  ),
  const CardLogos(
    imageSource: 'assets/dart.svg',
  ),
  const CardLogos(
    imageSource: 'assets/typescript.svg',
  ),
  const CardLogos(
    imageSource: 'assets/node.svg',
  )
];

class TitleWithUnderlined extends StatelessWidget {
  final String title;
  final Color? color;

  const TitleWithUnderlined({
    Key? key,
    required this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 32,
              color: color ?? const Color.fromRGBO(114, 172, 243, 0.941)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
          child: Container(
            height: 3.0,
            width: 106.0,
            color: color ?? const Color.fromRGBO(114, 172, 243, 0.941),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
          child: Container(
            height: 3.0,
            width: 51.0,
            color: color ?? const Color.fromRGBO(114, 172, 243, 0.941),
          ),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 130.0,
                      color: const Color.fromRGBO(114, 172, 243, 0.941),
                    ),
                  ),
                  const Text(
                    'Desenvolvedor mobile',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromRGBO(114, 172, 243, 0.941),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text('Lincoln Ferreira',
                  style: TextStyle(
                    fontSize: 64,
                    color: Color.fromRGBO(114, 172, 243, 0.941),
                  )),
              const SizedBox(height: 24),
              const Text(
                  'Atualmente atuando como desenvolvedor mobile com flutter.',
                  style: TextStyle(fontSize: 24)),
              const SizedBox(
                height: 164,
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add_circle),
                label: const Text(
                  'Mais sobre mim',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 343,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                maxRadius: 140,
                backgroundImage: AssetImage('assets/lincoln.jpg'),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text('Olá, vamos bater um papo?!'),
              const SizedBox(
                height: 74,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset('assets/github.svg'),
                      const SizedBox(height: 10),
                      const Text('Github')
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset('assets/linkedin.svg'),
                      const SizedBox(height: 10),
                      const Text('Linkedin')
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset('assets/medium.svg'),
                      const SizedBox(height: 10),
                      const Text('Medium')
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CarrouselLogo extends StatelessWidget {
  const CarrouselLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 80),
        Container(
          height: 154,
          width: double.infinity,
          color: const Color.fromRGBO(114, 172, 243, 0.941),
          child: SizedBox(
            height: 66,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return list[index];
              },
              itemCount: list.length,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Column(
          children: [
            Text(
              'Ver todas tecnologias',
              style: TextStyle(fontSize: 20),
            ),
            Icon(
              Icons.arrow_drop_down_circle_outlined,
              color: Color.fromRGBO(114, 172, 243, 0.941),
            )
          ],
        ),
      ],
    );
  }
}

class HeaderSection extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final String? subtitle;
  final Color? subtitleColor;

  const HeaderSection({
    Key? key,
    required this.title,
    this.titleColor,
    this.subtitle,
    this.subtitleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWithUnderlined(
          title: title,
          color: titleColor,
        ),
        if (subtitle != null)
          SizedBox(
            width: 500,
            child: Text(
              subtitle!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: subtitleColor),
            ),
          )
      ],
    );
  }
}

class WorkSpaceProjects extends StatelessWidget {
  const WorkSpaceProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 200.0),
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        runSpacing: 24,
        spacing: 16,
        children: [
          SizedBox(
            width: 340,
            height: 140,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 0.941),
              ),
            ),
          ),
          SizedBox(
            width: 340,
            height: 140,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 0.941),
              ),
            ),
          ),
          SizedBox(
            width: 340,
            height: 140,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 0.941),
              ),
            ),
          ),
          SizedBox(
            width: 340,
            height: 140,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 0.941),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FooterAboutMore extends StatelessWidget {
  const FooterAboutMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
      color: const Color.fromRGBO(114, 172, 243, 0.941),
      height: 574,
      child: const Column(
        children: [
          TitleWithUnderlined(
            title: 'Sobre mim',
            color: Colors.white,
          ),
          SizedBox(height: 36),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                    'Prazer, tenho 23 anos e estou me formando agora no final de 2023, na faculdade Sptech onde estudo ADS (analise e desenvolvimento de sistemas)\n\n Tive a oportunidade de atuar como estagiário em 2018 como desenvolvedor WEB para o site de minha escola, onde fiz meu curso técnico e me formei depois de 2 anos.',
                    style: TextStyle(fontSize: 20)),
              ),
              SizedBox(width: 28),
              Expanded(
                child: Text(
                    'Atualmente estou a 1 ano e meio como desenvolvedor front-end com o framework flutter.\n\nNão existe ferramenta bala de prata, mas flutter é uma ferramenta em que gosto realmente bastante nela então gostaria que vingasse e se depender de mim vou fazer de todo o possível pra ajudar a comunidade a crescer!',
                    style: TextStyle(fontSize: 20)),
              ),
              SizedBox(width: 28),
              Expanded(
                child: Text(
                    'Quero estar em um ambiente onde possa estar constantemente com novos desafios e com parceiros em que posso contar, juntos pra um só objetivo e sempre subindo degrau em degrau juntos.',
                    style: TextStyle(fontSize: 20)),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CardHabilits extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget illustrate;

  const CardHabilits({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.illustrate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: illustrate,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 16),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TabBarProjects extends StatefulWidget {
  const TabBarProjects({super.key});

  @override
  State<TabBarProjects> createState() => _TabBarProjectsState();
}

class _TabBarProjectsState extends State<TabBarProjects> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: const DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  text: 'data',
                ),
                Tab(
                  text: 'data',
                ),
                Tab(
                  text: 'data',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SizedBox(height: 200, child: Center(child: Text('data'))),
                  SizedBox(height: 200, child: Center(child: Text('data'))),
                  SizedBox(height: 200, child: Center(child: Text('data'))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
