// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardLogos extends StatelessWidget {
  final String imageSource;
  const CardLogos({
    Key? key,
    required this.imageSource,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 66,
      padding: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.center,
      child: SvgPicture.asset(
        imageSource,
        height: 48,
        width: 200,
        colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.srcIn),
      ),
    );
  }
}
