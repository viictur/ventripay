import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:summer_flutter/core/app_colors.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class SnackbarHandler {
  static void showSuccessSnackbar({
    required BuildContext context,
    String? message,
    Widget? icon,
  }) {
    return showTopSnackBar(
      Overlay.of(context),
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 12,
      ),
      Material(
        type: MaterialType.transparency,
        child: Container(
          // width: MediaQuery.sizeOf(context).width,
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.primary),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              icon ??
                  const Icon(
                    Icons.check_circle,
                    color: Colors.white,
                  ),
              Gap(12),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth:
                      MediaQuery.sizeOf(context).width * .7,
                ),
                child: ClipRRect(
                  child: Text(
                    message ?? "Successful",
                    style: AppStyles.montserrat14Md,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
