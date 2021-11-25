import 'package:flutter/material.dart';

class RegularButtons extends StatelessWidget {
  final void Function()? onTap;
  final IconData? icon;
  const RegularButtons({
    Key? key,
    this.onTap,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.blueAccent,
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: SizedBox(
            width: 40,
            child: Icon(icon),
          ),
        ),
      ),
    );
  }
}
