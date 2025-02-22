// import 'package:flutter/material.dart';
// import 'package:meta_seo/meta_seo.dart';
// import '../../about_me.dart';
// import '../../back-end_session.dart';
// import '../../carousel_logos.dart';
// import '../../circle_blur.dart';
// import '../../footer.dart';
// import '../../header_component.dart';
// import '../../mobile_session.dart';
// import '../../responsive/header.dart';
// import '../../shimmer_arrows.dart';
// import '../../../core/device/device_utils.dart';
// import '../../../core/seo/seo.dart';
// import '../../../mocks/mobile_mock_data.dart';

// class HomePage extends StatefulWidget implements Seo {
//   const HomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<HomePage> createState() => _HomePageState();

//   @override
//   void loadSEO() {
//     final meta = MetaSEO();
//     meta.author(author: 'Eng Mouaz M AlShahmeh');
//     meta.description(description: 'Meta SEO Web Example');
//     meta.keywords(keywords: 'Flutter, Dart, SEO, Meta, Web');
//   }
// }

// class _HomePageState extends State<HomePage> {
//   String selectedSection = 'Projetos';
//   String selectedLanguage = 'PT';

//   @override
//   Widget build(BuildContext context) {
//     var isDesktop = DeviceUtility.isDesktop(context);

//     return Scaffold(
//       extendBody: true,
//       extendBodyBehindAppBar: true,
//       backgroundColor: const Color(0xff12171D),
//       drawer: !isDesktop
//           ? Drawer(
//               backgroundColor: Colors.amber,
//               child: SizedBox(
//                 height: 200,
//                 child: ListView(
//                   padding: EdgeInsets.zero,
//                   children: <Widget>[
//                     const DrawerHeader(
//                       decoration: BoxDecoration(
//                         color: Colors.blue,
//                       ),
//                       child: Text('Drawer Header'),
//                     ),
//                     ListTile(
//                       title: const Text('Item 1'),
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                     ),
//                     ListTile(
//                       title: const Text('Item 2'),
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           : null,
//       appBar: isDesktop
//           ? Header(
//               onLanguageChanged: (p0) {},
//               onSectionChanged: (p0) {},
//               selectedLanguage: "",
//               selectedSection: "",
//             )
//           : null,
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             const CircleBlur(
//               verticalPercentage: 10,
//               horizontalPercentage: 76,
//             ),
//             const CircleBlur(
//               verticalPercentage: 90,
//               horizontalPercentage: -10,
//             ),
//             const CircleBlur(
//               verticalPercentage: 150,
//               horizontalPercentage: 50,
//             ),
//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 276.0),
//                   child: Column(
//                     children: <Widget>[
//                       const SpaceHeight(height: 100),
//                       const HeaderComponent(),
//                       const SpaceHeight(height: 120),
//                       const SkillsTab(),
//                       const ShimmerArrows(
//                         spaceTop: 100,
//                         spaceBottom: 200,
//                       ),
//                       const AboutMeSection(),
//                       const ShimmerArrows(
//                         spaceTop: 200,
//                         spaceBottom: 200,
//                       ),
//                       MobileSession(
//                         title: "Mobile",
//                         items: items,
//                         paddingHorizontalComponent: 0,
//                       ),
//                       const ShimmerArrows(
//                         spaceTop: 300,
//                         spaceBottom: 100,
//                       ),
//                       const BackEndSession(),
//                     ],
//                   ),
//                 ),
//                 const ShimmerArrows(
//                   spaceTop: 200,
//                 ),
//                 const CustomFooter(),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class SpaceHeight extends StatelessWidget {
  final double height;
  const SpaceHeight({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
