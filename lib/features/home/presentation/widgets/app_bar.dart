import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Text(
            'Rick and Morty Universe',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.lightBlue),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        boxShadow: [
          const BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(64);
}
