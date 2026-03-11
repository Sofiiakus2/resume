import 'package:cv_portfolio/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopSnackBar {
  static void show(
      BuildContext context,
      String message, {
        Duration duration = const Duration(seconds: 3),
        String? iconAssetPath = 'assets/icons/error_icon.svg',
        Color backgroundColor = backgroundPrimaryColor,
        Color borderColor = primaryColor,
        Color textColor = primaryColor,
      }) {
    final overlay = Overlay.maybeOf(context);
    if (overlay == null) {
      debugPrint('⚠️ No Overlay found $message');
      return;
    }

    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).padding.top + 70.h,
        left: 200.w,
        right: 200.w,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            decoration: BoxDecoration(
              color: backgroundColor.withOpacity(0.9),
              borderRadius: BorderRadius.circular(50.r),
              border: Border.all(color: borderColor, width: 1.5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10.w),
                Flexible(
                  child: Text(
                    message,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: textColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);
    Future.delayed(duration).then((_) {
      if (overlayEntry.mounted) overlayEntry.remove();
    });
  }
}
