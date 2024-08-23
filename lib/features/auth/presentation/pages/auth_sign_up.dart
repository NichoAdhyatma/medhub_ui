import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medhub/core/common/widgets/primary_button.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/core/utils/sized_box.dart';
import 'package:medhub/features/auth/presentation/cubit/password_visibility_cubit.dart';
import 'package:medhub/features/auth/presentation/pages/auth_verify_page.dart';

import 'auth_sign_in.dart';

class AuthSignUp extends StatelessWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const AuthSignUp(),
      );

  const AuthSignUp({super.key});

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
                "Create your account",
                style: Theme.of(context).textTheme.headlineSmall!,
              ),
              30.heightSB,
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Your Name",
                      ),
                    ),
                    20.heightSB,
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Mobile Number",
                        prefix: Transform.translate(
                          offset: const Offset(0, 0),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 10,
                            ),
                            child: Text(
                              "+62",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                        ),
                      ),
                    ),
                    20.heightSB,
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Email",
                      ),
                    ),
                    20.heightSB,
                    BlocProvider(
                      create: (context) => PasswordVisibilityCubit(),
                      child: BlocBuilder<PasswordVisibilityCubit, bool>(
                        builder: (context, state) {
                          return TextFormField(
                            obscureText: state,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  context
                                      .read<PasswordVisibilityCubit>()
                                      .togglePasswordVisibility();
                                },
                                icon: Icon(
                                  state
                                      ? Icons.remove_red_eye_outlined
                                      : Icons.visibility_off,
                                  color: AppPalette.secondaryMutedColor,
                                ),
                              ),
                              suffixIconConstraints: const BoxConstraints(
                                minWidth: 0,
                              ),
                              labelText: "Password",
                            ),
                          );
                        },
                      ),
                    ),
                    60.heightSB,
                    PrimaryButton(
                      onPressed: () {
                        Navigator.of(context).push(AuthVerifyPage.route());
                      },
                      label: "CREATE ACCOUNT",
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
                          "Already have an account?",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppPalette.secondaryMutedColor,
                                  ),
                        ),
                        4.widthSB,
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              AuthSignIn.route(),
                            );
                          },
                          child: Text(
                            "Sign In",
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
