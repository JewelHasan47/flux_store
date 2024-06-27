import 'package:flutter/material.dart';
import 'package:flux_store/Utils/flux_height_width_utils.dart';
import 'package:flux_store/Utils/screen_configs.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SimpleAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 90.w,
      leading: Padding(
        padding: EdgeInsets.only(
          left: FluxHeightWidthUtils.defaultLeftPadding,
          right: FluxHeightWidthUtils.defaultRightPadding,
        ),
        child: IconButton(
          icon: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Icon(
              Icons.chevron_left,
              color: Colors.black,
              size: 35.0.h,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
