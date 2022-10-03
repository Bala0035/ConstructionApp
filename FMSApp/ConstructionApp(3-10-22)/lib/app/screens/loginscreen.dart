import 'package:flutter/material.dart';
import '../constens/colors.dart';
import '../resorce/fetchdata/logincondition.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool member = true;
  bool nomember = false;

  String _userid = "";
  String _password = '';
  final keyvalue = GlobalKey();
  bool _isVisible = false;
  final controller = TextEditingController();
  // ignore: non_constant_identifier_names
  late double Value = keyvalue.currentContext!.size!.height;
  void _onchangedid(String value) {
    setState(() {
      _userid = value;
    });
  }

  void _onchangedps(String value) {
    setState(() {
      _password = value;
    });
  }

  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: EdgeInsets.fromLTRB(0, height * 0.245, 0, 0),
          child: Center(
            child: Container(
              height: height * 0.5,
              width: width * 0.85,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 27, 40, 182)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.account_circle_outlined,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          width: width * 0.65,
                          height: 50,
                          child: TextField(
                            //userid
                            controller: controller,
                            style: const TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(150, 255, 255, 255)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              hintText: "User ID",
                              hintStyle: TextStyle(
                                color: Color.fromARGB(150, 255, 255, 255),
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            onChanged: _onchangedid,
                            // onSubmitted: print(_value),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.key,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          width: width * 0.65,
                          child: TextField(
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white),
                            onChanged: _onchangedps,
                            obscureText: _isVisible ? false : true,
                            decoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(150, 255, 255, 255)),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                                hintText: "Password",
                                hintStyle: const TextStyle(
                                    color: Color.fromARGB(150, 255, 255, 255),
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic),
                                suffixIcon: IconButton(
                                  onPressed: () => updateStatus(),
                                  icon: Icon(
                                    _isVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: nomember,
                          checkColor: apptheam,
                          activeColor: Colors.white,
                          side: MaterialStateBorderSide.resolveWith(
                            (states) => const BorderSide(
                                width: 2.0,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          onChanged: (boolvalue) {
                            setState(() {
                              if (nomember == false) {
                                nomember = true;
                              } else {
                                nomember = false;
                              }
                            });
                          },
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Remember Me',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                        onTap: () {
                          Login(_userid, _password, context);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 242, 191, 17),
                          ),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                    const InkWell(
                        child: Text(
                      "Forget Password?",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
