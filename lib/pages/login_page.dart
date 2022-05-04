import 'package:flutter/material.dart';
import 'package:structuremaking/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String usr = "";
  String pw = "";
  final username = "Sushma";
  final password = "passme123";
  bool checkpass(String usrs, String pws) {
    if (usr == "Sushma" && pw == "passme123") {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        // child: Center(
        //   child: Text(
        //     "Login Page",
        //     style: TextStyle(
        //         fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
        //     textScaleFactor: 3.0,
        //   ),
        // ),

        child: Container(
            alignment: Alignment.centerRight,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/abc.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Column(children: [
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100.0, top: 100.0),
                child: Container(
                  width: 500,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Welcome",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                  hintText: "Username",
                                  labelText: "Username",
                                  labelStyle: TextStyle(fontSize: 20)),
                              // autovalidateMode:
                              //     AutovalidateMode.onUserInteraction,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  hintText: "Enter password",
                                  labelText: "Password",
                                  labelStyle: TextStyle(fontSize: 20)),
                              // validator: (String? password1) {
                              //   if (password1!.isEmpty) {
                              //     return 'Enter username';
                              //   }
                              //   pw = password1;
                              // },
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 50,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return const Color.fromARGB(
                                        255, 161, 197, 227);
                                  }
                                  return const Color.fromARGB(255, 68, 31,
                                      162); // Use the component's default.
                                },
                              ),
                            ),
                            child: const Text(
                              'LogIn',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              // if ((usr.compareTo("Sushma") == 1) &&
                              //     (pw.compareTo("passme123") == 1)) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()),
                              );
                              // } else {
                              //   AlertDialog(
                              //     title: const Text('Popup example'),
                              //     content: Column(
                              //       mainAxisSize: MainAxisSize.min,
                              //       crossAxisAlignment:
                              //           CrossAxisAlignment.start,
                              //       children: const <Widget>[
                              //         Text("Hello"),
                              //       ],
                              //     ),
                              //   );
                              // }
                            }),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ])));
  }
}

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);
//   String usr = "";
//   String pw = "";
//   final username = "Sushma";
//   final password = "passme123";
//   bool checkpass(String usrs, String pws) {
//     return true;
//   }

//   @override
//   Widget build(BuildContext context) {
    
//   }
// }
