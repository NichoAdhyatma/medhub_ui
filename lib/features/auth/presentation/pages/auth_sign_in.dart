import 'package:flutter/material.dart';
import 'package:medhub/core/common/widgets/primary_button.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/core/utils/sized_box.dart';
import 'package:medhub/features/auth/presentation/pages/auth_sign_up.dart';

class AuthSignIn extends StatelessWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const AuthSignIn(),
      );

  const AuthSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              5.heightSB,
              Text(
                "Welcome Back!",
                style: Theme.of(context).textTheme.headlineSmall!,
              ),
              30.heightSB,
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(
                          Icons.person_outline_rounded,
                          color: AppPalette.primaryColor,
                        ),
                      ),
                    ),
                    20.heightSB,
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock_outline_rounded,
                          color: AppPalette.primaryColor,
                        ),
                        suffixIcon: Text(
                          "Forgot ?",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppPalette.secondaryMutedColor,
                                  ),
                        ),
                        suffixIconConstraints: const BoxConstraints(
                          minWidth: 0,
                        ),
                        labelText: "Password",
                      ),
                    ),
                    60.heightSB,
                    PrimaryButton(
                      onPressed: () {},
                      label: "SIGN IN",
                    ),
                    80.heightSB,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 14,
                          color: AppPalette.secondaryMutedColor,
                        ),
                        4.widthSB,
                        Text(
                          "Don't have an account?",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppPalette.secondaryMutedColor,
                                  ),
                        ),
                        4.widthSB,
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              AuthSignUp.route(),
                            );
                          },
                          child: Text(
                            "Sign Up",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: AppPalette.secondaryMutedColor,
                                ),
                          ),
                        ),
                      ],
                    ),
                    20.heightSB,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
