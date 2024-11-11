import 'package:basic_flutter/core/theme/app_pallete.dart';
import 'package:basic_flutter/features/auth/presentation/bloc/remote/remote_auth_bloc.dart';
import 'package:basic_flutter/features/auth/presentation/bloc/remote/remote_auth_event.dart';
import 'package:basic_flutter/features/auth/presentation/bloc/remote/remote_auth_state.dart';
import 'package:basic_flutter/features/auth/presentation/widgets/app_login_button.dart';
import 'package:basic_flutter/features/auth/presentation/widgets/auth_button.dart';
import 'package:basic_flutter/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupPage extends StatelessWidget {
  static route() => MaterialPageRoute(
        builder: (context) => SignupPage(),
      );

  SignupPage({super.key});
  final TextEditingController teEmailController = TextEditingController();
  final TextEditingController tePasswordController = TextEditingController();
  final TextEditingController teUsernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/login_bg.png"),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 27,
                ),
                const Text(
                  "Hi, Join now and Enjoy",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Today is a new day. It's your day. You shape it. Sign up to start streaming a movie",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 24,
                ),
                AuthField(
                  hintText: "example@email.com",
                  labelText: "Email",
                  teController: teEmailController,
                ),
                const SizedBox(
                  height: 16,
                ),
                AuthField(
                  hintText: "at least 8 characters",
                  labelText: "Password",
                  teController: tePasswordController,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 16,
                ),
                AuthField(
                  hintText: "choose your username",
                  labelText: "Username",
                  teController: teUsernameController,
                ),
                const SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text("Forgot Password?",
                        style: TextStyle(
                            color: AppPallete.mainColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                    width: width,
                    child: BlocListener<RemoteAuthBloc, RemoteAuthState>(
                      listener: (context, state) {
                        // TODO: implement listener
                      },
                      child: AuthButton(
                        onClick: () {
                          if (teEmailController.text.isNotEmpty &&
                              tePasswordController.text.isNotEmpty &&
                              teUsernameController.text.isNotEmpty) {
                            context.read<RemoteAuthBloc>().add(AuthSignUp(
                                email: teEmailController.text,
                                password: tePasswordController.text,
                                username: teUsernameController.text));
                            return true;
                          }
                          return false;
                        },
                      ),
                    )),
                const SizedBox(
                  height: 42,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Colors.grey.shade400,
                    )),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text("Or sign in with"),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.grey.shade400,
                    )),
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  children: [
                    AppLoginButton(
                      imageIcon: const AssetImage("assets/images/google.png"),
                      textButton: "Google",
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    AppLoginButton(
                      imageIcon: const AssetImage("assets/images/facebook.png"),
                      textButton: "Facebook",
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "Already have an account? ",
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 16),
                              children: [
                            TextSpan(
                                text: "Login",
                                style: const TextStyle(
                                    color: AppPallete.mainColor),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pop(context);
                                  }),
                          ])),
                      const SizedBox(
                        height: 27,
                      ),
                      const Text(
                        "© 2023 ALL RIGHTS RESERVED",
                        style:
                            TextStyle(fontSize: 14, color: AppPallete.grey300),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
