import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yuk_mancing/Constant/style.dart';
import 'package:yuk_mancing/UI/Widget/GlobalWidget/appbar_costum.dart';
import 'package:yuk_mancing/UI/login_page.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 20,
          ),
          child: ListView(
            children: [
              const AppbarCostum(
                leftIcon: Icons.arrow_back,
                nameappbar: "Forgot Password",
                leftCallback: Loginpage(),
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Email",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Montserrat"),
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(right: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: kLightGray.withOpacity(0.3),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: TextField(
                  controller: myController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email or Phone number"),
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    color: kGray,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(2),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  onPressed: () {
                    var _email = myController.text;
                    print("email : " + _email);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    minimumSize:
                        Size.fromWidth(MediaQuery.of(context).size.width / 3),
                    primary: kBlack,
                    backgroundColor: kSecondary,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: kBlack,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(top: 2),
                alignment: Alignment.center,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: kWhite,
                  ),
                  onPressed: () {
                    print("dialihkan ke forgot password");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Loginpage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Back to login",
                    style: TextStyle(
                        fontFamily: "Monstserrat",
                        fontSize: 15,
                        color: kLightGray,
                        fontWeight: FontWeight.w600),
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
