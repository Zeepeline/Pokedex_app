import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pokedex_app/core/constants/app_text_styles.dart';

class AttributDisplay extends StatelessWidget {
  const AttributDisplay(
      {super.key,
      required this.title,
      required this.data,
      required this.iconPath});

  final String title;
  final String data;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              iconPath,
              colorFilter: ColorFilter.mode(
                  Color(0xFF000000).withValues(alpha: 0.6), BlendMode.srcIn),
            ),
            Gap(8),
            Text(
              title,
              style: AppTextStyles.label.copyWith(
                color: Color(0xFF000000).withValues(alpha: 0.6),
              ),
            )
          ],
        ),
        Gap(8),
        Container(
          width: MediaQuery.sizeOf(context).width,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Color(0xFF000000).withValues(alpha: 0.1),
              width: 1,
            ),
          ),
          child: Center(
            child: Text(
              data,
              style: AppTextStyles.subtitle,
            ),
          ),
        )
      ],
    );
  }
}
