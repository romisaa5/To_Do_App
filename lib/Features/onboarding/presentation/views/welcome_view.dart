import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:toda_app/core/utils/app_router.dart';
import 'package:toda_app/core/widgets/custom_button.dart';
import 'package:toda_app/core/themes/text_styles.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 15.h,
          children: [
            SizedBox(height: 30.h),
            Text(
              'Welcome to UpTodo',
              style: Styles.textStyle32.copyWith(color: textTheme.bodyLarge!.color),
            ),
            Text(
              'Please login to your account or create new account to continue',
              style: Styles.textStyle16!.copyWith(color: textTheme.bodyMedium!.color),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            CustomButton(
              onTap: () {
                GoRouter.of(context).pushReplacement(AppRouter.loginView);
              },
              text: 'LOGIN',
              color: theme.colorScheme.primary,
              width: MediaQuery.of(context).size.width,
            ),
          
            CustomButton(
              onTap: () {
                GoRouter.of(context).pushReplacement(AppRouter.registerView);
              },
              text: 'CREATE ACCOUNT',
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}
