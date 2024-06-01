import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 139,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ToggleButtons(
                  isSelected: const [true, false],
                  children: [
                    SizedBox(
                      height: 44,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'PT-BR',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 44,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'EN-US',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Projetos',
                      style: TextStyle(fontSize: 20),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sobre mim',
                      style: TextStyle(fontSize: 20),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Contato',
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child:
                IconButton(onPressed: () {}, icon: const Icon(Icons.dark_mode)),
          ),
        ],
      ),
    );
  }
}
