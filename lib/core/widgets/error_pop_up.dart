import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';
import 'package:prime_app/core/widgets/custom_button_widget.dart';

class ErrorPopup {
  static Future<void> show(
    BuildContext context, {
    required String message,
    String title = 'Login Failed',
  }) {
    return showDialog(
      context: context,
      barrierDismissible: true,

      builder: (_) {
        return Dialog(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          insetPadding: const EdgeInsets.symmetric(horizontal: 24),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.error_outline, size: 48, color: Colors.red),

                const SizedBox(height: 16),

                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.lexendBold40(
                    context: context,
                    fontSize: 24,
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.lexendMedium16(
                    context: context,
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 24),

                CustomButtonWidget(
                  color: Colors.white,
                  text: 'OK',
                  textStyle: AppTextStyles.lexendRegular12(
                    context: context,
                  ).copyWith(color: AppColors.primaryColor),
                  height: MediaQuery.sizeOf(context).height * 0.06,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
