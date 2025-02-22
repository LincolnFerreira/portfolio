import 'package:flutter/material.dart';
import 'custom_container.dart';

class ProjectDetails extends StatefulWidget {
  final List<Map<String, dynamic>> projects;

  const ProjectDetails({
    required this.projects,
    Key? key,
  }) : super(key: key);

  @override
  _ProjectDetailsState createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Carrossel para mockups
        Expanded(
          flex: 2,
          child: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            itemCount: widget.projects.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E1E1E),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        widget.projects[index]["title"],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        // Containers de informações
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomContainer(
                  title: "Descrição",
                  subtitle: widget.projects[selectedIndex]["description"],
                  icon: widget.projects[selectedIndex]["icon"],
                ),
                const SizedBox(height: 16),
                CustomContainer(
                  title: "Tecnologias Usadas",
                  subtitle: widget.projects[selectedIndex]["technologies"],
                  icon: Icons.code,
                ),
                const SizedBox(height: 16),
                CustomContainer(
                  title: "Destaques",
                  subtitle: widget.projects[selectedIndex]["highlights"],
                  icon: Icons.star,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
