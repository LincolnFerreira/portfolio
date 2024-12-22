import 'package:flutter/material.dart';
import 'package:portfolio/components/atomic/molecules/language_toggle.dart';
import 'package:portfolio/core/theme/sizes.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  final bool isDesktop;
  final String selectedLanguage;
  final Function(String) changeLanguage;

  const CustomHeader({
    super.key,
    required this.isDesktop,
    required this.selectedLanguage,
    required this.changeLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff12171D),
      elevation: 0,
      title: isDesktop
          ? Padding(
              padding: const EdgeInsets.all(AppSizes.screenPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Adicione os itens do menu aqui
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          // Ação do botão
                        },
                        child: const Text('Menu Item 1'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Ação do botão
                        },
                        child: const Text('Menu Item 2'),
                      ),
                      // Adicione mais itens do menu conforme necessário
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: LanguageToggle(
                      currentLanguage: selectedLanguage,
                      onLanguageChange: changeLanguage,
                    ),
                  ),
                ],
              ),
            )
          : const Text(''),
      automaticallyImplyLeading: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56.0);
}
