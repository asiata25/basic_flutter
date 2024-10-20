import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    TextEditingController teEmailController = TextEditingController();
    TextEditingController tePasswordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  margin: const EdgeInsets.only(top: 24),
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
                  "Welcome Back  👋",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Today is a new day. It's your day. You shape it. Sign in to start streaming a movie",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Email",
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: teEmailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey.shade400)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.blue.shade600)),
                      hintText: "example@email.com",
                      hintStyle: TextStyle(color: Colors.grey.shade400)),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Password",
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  obscureText: true,
                  controller: tePasswordController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.grey.shade400)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.blue.shade600)),
                      hintText: "at least 8 characters",
                      hintStyle: TextStyle(color: Colors.grey.shade400)),
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
                            color: Colors.indigo,
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                    width: width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff162d3a),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)))),
                        onPressed: () {
                          print(teEmailController.text);
                          print(tePasswordController.text);
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ))),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
