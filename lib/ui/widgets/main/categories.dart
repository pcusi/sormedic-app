import 'package:flutter/material.dart';
import 'package:sormedic/theme/theme.dart';
import 'package:sormedic/ui/widgets/shared/text.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextGlobal(
            value: 'General',
            fontSize: 20.0,
            fontFamily: 'Poppins',
            fontColor: ThemeApp.kFontDark,
          )
        ],
      ),
    );
  }
}
