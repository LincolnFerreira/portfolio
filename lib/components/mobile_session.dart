import 'package:flutter/material.dart';
import 'package:portfolio/components/carousel_test.dart';
import 'package:portfolio/components/mobile_session_item.dart';
import 'package:portfolio/core/theme/sizes.dart';

class MobileSession extends StatefulWidget {
  final String title;
  final List<MobileItemData> items;

  const MobileSession({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  State<MobileSession> createState() => _MobileSessionState();
}

class _MobileSessionState extends State<MobileSession> {
  int _selectedItem = 3;

  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedItem = 3;
    });
    print("Selected item: $_selectedItem");
  }

  void _handleItemSelected(int index) {
    setState(() {
      _selectedItem = index;
    });
    print("Selected item: $index");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.title,
          style: const TextStyle(fontSize: 42),
        ),
        const SizedBox(height: AppSizes.spacingXs),
        const FractionallySizedBox(
          alignment: Alignment.center,
          widthFactor: 0.5,
          child: Text(
            'Explore meus projetos móveis, com detalhes sobre arquitetura, stack tecnológica e funcionalidades, demonstrando minha experiência em criar soluções móveis completas e eficientes.',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 100),
        SizedBox(
          height: 400,
          child: Perspective3DCarousel(
            items: widget.items,
            selectedItem: _selectedItem,
            onItemSelected: _handleItemSelected,
          ),
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: widget.items[_selectedItem].listMobileInformationData
                .map((item) {
              return MobileSessionItem(
                title: item.title,
                description: item.description,
                iconPath: item.iconPath,
                onTap: item.onTap,
                images: item.imagesPath,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

class MobileItemData {
  final String id;
  final List<MobileInformationData> listMobileInformationData;
  final String architectureText;
  final String iconPath;
  final String imagePath;
  final VoidCallback onTap1;
  final VoidCallback onTap2;
  final VoidCallback onTap3;
  final VoidCallback onTap4;

  const MobileItemData({
    required this.id,
    required this.listMobileInformationData,
    required this.architectureText,
    required this.iconPath,
    required this.imagePath,
    required this.onTap1,
    required this.onTap2,
    required this.onTap3,
    required this.onTap4,
  });
}

class MobileInformationData {
  final String iconPath;
  final String title;
  final String description;
  final VoidCallback onTap;
  final List<String>? imagesPath;

  MobileInformationData({
    required this.title,
    required this.description,
    required this.iconPath,
    required this.onTap,
    this.imagesPath,
  });
}
