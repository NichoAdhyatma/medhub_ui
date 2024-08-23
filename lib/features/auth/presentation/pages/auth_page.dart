import 'package:flutter/material.dart';
import 'package:medhub/core/common/widgets/primary_button.dart';
import 'package:medhub/core/common/widgets/secondary_button.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/core/utils/sized_box.dart';
import 'package:medhub/features/auth/presentation/pages/auth_sign_in.dart';
import 'package:medhub/features/auth/presentation/pages/auth_sign_up.dart';
import 'package:medhub/generated/assets.dart';

class AuthPage extends StatelessWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const AuthPage(),
      );

  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  Assets.authAuthBg1,
                  width: MediaQuery.of(context).size.width * 0.7,
                  fit: BoxFit.cover,
                ),
              ),
              30.heightSB,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Welcome to ',
                        style: Theme.of(context).textTheme.headlineSmall,
                        children: [
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              decoration: BoxDecoration(
                                color: AppPalette.tertiaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'MedHub',
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    20.heightSB,
                    Text(
                      'Do you want some help with your health to get better life?',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: AppPalette.secondaryMutedColor,
                          ),
                    ),
                  ],
                ),
              ),
              30.heightSB,
              Column(
                children: [
                  PrimaryButton(
                    onPressed: () {
                      Navigator.of(context).push(AuthSignUp.route());
                    },
                    label: "SIGN UP WITH EMAIL",
                  ),
                  10.heightSB,
                  SecondaryButton(
                    onPressed: () {},
                    icon: Image.asset(
                      Assets.authFacebookIcon,
                      width: 20,
                    ),
                    label: "CONTINUE WITH FACEBOOK",
                  ),
                  10.heightSB,
                  SecondaryButton(
                    onPressed: () {},
                    icon: Image.asset(
                      Assets.authGoogleIcon,
                      width: 20,
                    ),
                    label: "CONTINUE WITH GMAIL",
                  ),
                  20.heightSB,
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(AuthSignIn.route());
                    },
                    child: Text(
                      "LOGIN",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: AppPalette.secondaryMutedColor,
                          ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
