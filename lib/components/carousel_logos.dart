import 'dart:async';
import 'package:flutter/material.dart';
import 'package:portfolio/core/asset_path.dart';

class SkillsTab extends StatefulWidget {
  const SkillsTab({super.key});

  @override
  _SkillsTabState createState() => _SkillsTabState();
}

class _SkillsTabState extends State<SkillsTab> {
  int _selectedIndex = 0;
  Timer? _timer;

  final List<String> categories = [
    'Linguagens',
    'Frameworks',
    'Bancos de Dados',
    'Cloud Computing',
    'Ferramentas',
  ];

  final Map<int, List<Widget>> icons = {
    0: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: Image.asset(AssetPaths.dart),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: Image.asset(AssetPaths.typescript),
        ),
      ),
    ],
    1: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: Image.asset(AssetPaths.flutter),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: Image.asset(AssetPaths.react),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: Image.asset(AssetPaths.node),
        ),
      ),
    ],
    2: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: Image.asset(AssetPaths.mysqlOriginalWordmark),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: Image.asset(AssetPaths.postgresqlOriginalWordmark),
        ),
      ),
    ],
    3: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: Image.asset(AssetPaths.awsOriginal),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: Image.asset(AssetPaths.googleCloud),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: Image.asset(AssetPaths.awsPlain),
        ),
      ),
    ],
    4: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: Image.asset(AssetPaths.trello),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: Image.asset(AssetPaths.jira),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: Image.asset(AssetPaths.docker),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: Image.asset(AssetPaths.postman),
        ),
      ),
    ],
  };

  int _previousIndex = 0;

  @override
  void initState() {
    super.initState();
    _startAutoSwitching();
  }

  void _startAutoSwitching() {
    _timer = Timer.periodic(const Duration(seconds: 5), (_) {
      setState(() {
        _previousIndex = _selectedIndex;
        _selectedIndex = (_selectedIndex + 1) % categories.length;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 1,
            color: const Color(0xFF81A1C1),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 174.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(categories.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _timer
                          ?.cancel(); // Pause the auto-switching on manual selection
                      _previousIndex = _selectedIndex;
                      _selectedIndex = index;
                      _startAutoSwitching(); // Restart the timer
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        categories[index],
                        style: TextStyle(
                          color: _selectedIndex == index
                              ? Colors.white
                              : const Color(0xFFB0BEC5),
                          fontSize: 16,
                          fontWeight: _selectedIndex == index
                              ? FontWeight.w700
                              : FontWeight.normal,
                        ),
                      ),
                      if (_selectedIndex == index)
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: 2,
                          width: 50,
                          color: Colors.blue,
                        ),
                    ],
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 30),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              final isNext = _selectedIndex > _previousIndex;
              final offsetAnimation = Tween<Offset>(
                begin: Offset(isNext ? 1 : -1, 0),
                end: Offset.zero,
              ).animate(animation);

              return SlideTransition(
                position: offsetAnimation,
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              );
            },
            child: Row(
              key: ValueKey<int>(_selectedIndex),
              mainAxisAlignment: MainAxisAlignment.center,
              children: icons[_selectedIndex] ?? [],
            ),
          ),
        ],
      ),
    );
  }
}
