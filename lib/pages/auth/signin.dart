import 'dart:convert';
import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:meet_me/constants/Network.dart';

import 'package:meet_me/pages/screens.dart';

// ignore: must_be_immutable
class Signin extends StatefulWidget {
  Signin({Key key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  DateTime currentBackPressTime;
  bool _isObscure = true;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: primaryColor,
        image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: WillPopScope(
        onWillPop: () async {
          bool backStatus = onWillPop();
          if (backStatus) {
            exit(0);
          }
          return false;
        },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: ListTile(
              leading: Text(
                'Sign In',
                style: white20BoldTextStyle,
              ),
              trailing: GestureDetector(
                  child: Text(
                    'Register Free',
                    style: white20BoldTextStyle,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  }),
            ),
          ),
          body: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 140,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: fixPadding * 2.0),
                      padding: const EdgeInsets.symmetric(
                        horizontal: fixPadding * 2.0,
                        vertical: fixPadding * 3.5,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          nameTextField(),
                          heightSpace,
                          heightSpace,
                          heightSpace,
                          heightSpace,
                          passwordTextField(),
                          heightSpace,
                          heightSpace,
                          heightSpace,
                          heightSpace,
                          // otherOptions(context),
                          heightSpace,
                          heightSpace,
                          heightSpace,
                          heightSpace,
                          heightSpace,
                          heightSpace,
                          signinButton(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                  child: Container(
                    height: 60,
                    width: 400,
                    color: Colors.grey,
                    child: GestureDetector(
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                'Not yet signup?',
                                style: TextStyle(color: Colors.black87),
                              ),
                              Text(
                                'Register Now',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: 'Press Back Once Again to Exit.',
        backgroundColor: Colors.black,
        textColor: whiteColor,
      );
      return false;
    } else {
      return true;
    }
  }

  nameTextField() {
    return Container(
      padding: const EdgeInsets.all(fixPadding * 1.2),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
          ),
        ],
      ),
      child: TextField(
        controller: emailController,
        cursorColor: primaryColor,
        style: black15SemiBoldTextStyle,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          hintText: 'User Name',
          hintStyle: grey15RegularTextStyle,
          border: const UnderlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }

  passwordTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(fixPadding * 1.2),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: greyColor.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 2,
              ),
            ],
          ),
          child: TextField(
            controller: passwordController,
            obscureText: _isObscure,
            cursorColor: primaryColor,
            style: black15SemiBoldTextStyle,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.zero,
              hintText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                  color: Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
              hintStyle: grey15RegularTextStyle,
              border: const UnderlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
        heightSpace,
        Text(
          'Forget password?',
          style: grey12RegularTextStyle,
        ),
      ],
    );
  }

  /*otherOptions(context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: fixPadding / 2.6,
                  vertical: fixPadding * 1.5,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff4267b2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/facebook.png',
                      height: 15,
                      width: 15,
                    ),
                    Text(
                      'SignIn with facebook',
                      style: white12BoldTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            widthSpace,
            widthSpace,
            widthSpace,
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: fixPadding / 2.6,
                  vertical: fixPadding * 1.5,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffea4335),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/google.png',
                      height: 15,
                      width: 15,
                    ),
                    widthSpace,
                    Text(
                      'SignIn with Google',
                      style: white12BoldTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        heightSpace,
        heightSpace,
        heightSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have account? ',
              style: grey14SemiBoldTextStyle,
            ),
            InkWell(
             */ /* onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Signup()),
              ),*/ /*
              child: Text(
                'Sign Up',
                style: primaryColor14SemiBoldTextStyle,
              ),
            ),
          ],
        ),
      ],
    );
  }*/

  signinButton(context) {
    return InkWell(
      onTap: () => {
        /*Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Signup()),
        )*/
        signIn(context)
      },
      child: Container(
        padding: const EdgeInsets.all(fixPadding * 1.5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          'Sign In'.toUpperCase(),
          style: white16BoldTextStyle,
        ),
      ),
    );
  }

  signIn(context) async {
    var data = {
      'email_id': emailController.text.trim(),
      'password': passwordController.text.trim()
    };
    var res = await Network()
        .login('https://lankavivaha.com/dev/api/login.php', data);
    var body = json.decode(res.data);
    if (body['status'] == "1") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    } else {}
  }
}
