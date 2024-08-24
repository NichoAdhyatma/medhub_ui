import 'package:flutter/material.dart';
import 'package:medhub/core/common/widgets/primary_button.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/core/utils/sized_box.dart';
import 'package:medhub/features/home/presentation/pages/home_page.dart';
import 'package:medhub/generated/assets.dart';

class AuthSuccessPage extends StatelessWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const AuthSuccessPage(),
      );

  const AuthSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Assets.authSuccessBg,
                width: MediaQuery.of(context).size.width * 0.7,
              ),
              30.heightSB,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                child: Column(
                  children: [
                    Text(
                      "Phone Number Verified",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    20.heightSB,
                    Text(
                      "Congradulations, your phone number has been verified. You can start using the app",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppPalette.secondaryMutedColor,
                            fontSize: 16,
                          ),
                    )
                  ],
                ),
              ),
              140.heightSB,
              PrimaryButton(
                label: "CONTINUE",
                onPressed: () {
                  Navigator.of(context).push(HomePage.route());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
