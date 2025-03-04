import 'package:flutter/material.dart';
import 'customization_screen.dart';
import 'app_color.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) {
                          return CustomizeBurgerScreen();
                        },
                      ));
      },
      child: Container(
        width: 72,
        height: 72,
        decoration: ShapeDecoration(
          color: AppColor.floatingActionButtonColor,
          shape: OvalBorder(),
          shadows: [
            BoxShadow(
              color: Color(0x66000000),
              blurRadius: 16,
              offset: Offset(0, 5),
              spreadRadius: 5,
            )
          ],
        ),
        child: Icon(
          Icons.add,
          size: 35,
          weight: 35.0,
          color: AppColor.floatingActionIconColor,
        ),
      ),
    );
  }
}
