import 'package:flutter/material.dart';
import 'package:medhub/core/common/widgets/primary_button.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/core/utils/sized_box.dart';
import 'package:medhub/features/auth/presentation/pages/auth_success_page.dart';

class AuthVerifyPage extends StatelessWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const AuthVerifyPage(),
      );

  const AuthVerifyPage({super.key});

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
                "Enter the verify code",
                style: Theme.of(context).textTheme.headlineSmall!,
              ),
              8.heightSB,
              Text(
                'We just sent you a verification code via phone +62 821 39 488 953',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppPalette.secondaryMutedColor,
                    ),
              ),
              30.heightSB,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return _buildOtpTextField(context, index);
                }),
              ),
              30.heightSB,
              PrimaryButton(
                onPressed: () {
                  Navigator.of(context).push(
                    AuthSuccessPage.route(),
                  );
                },
                label: 'SUBMIT CODE',
              ),
              20.heightSB,
              Center(
                child: Column(
                  children: [
                    Text(
                      "The verify code will expire in 00:59",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppPalette.secondaryMutedColor,
                          ),
                    ),
                    10.heightSB,
                    Text(
                      "Resend Code",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppPalette.accentColor,
                          ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOtpTextField(BuildContext context, int index) {
    final TextEditingController controller = TextEditingController();

    return Container(
      margin: const EdgeInsets.only(
        right: 20.0,
      ),
      width: 50,
      child: TextField(
        controller: controller,
        autofocus: index == 0,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 2,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.w400,
              color: AppPalette.secondaryMutedColor,
            ),
        decoration: const InputDecoration(
          counterText: '',
        ),
        onChanged: (value) {
          if (value.length > 1) {
            controller.text = value.substring(value.length - 1);
          }

          if (value.isNotEmpty && value.length == 1 && index < 3) {
            FocusScope.of(context).nextFocus();
          }

          if (value.isEmpty && index > 0) {
            FocusScope.of(context).previousFocus();
          }
        },
        onTap: () {
          controller.selection = TextSelection.fromPosition(
            TextPosition(offset: controller.text.length),
          );

          FocusScope.of(context).requestFocus();
        },
      ),
    );
  }
}
