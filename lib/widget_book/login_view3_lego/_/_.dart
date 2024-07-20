import 'package:flutter/material.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  bool _showPassword = false;

  void _toggleVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: 50,
                  padding: EdgeInsets.only(bottom: 30),
                  child: Image.asset('assets/lego/login_view3_lego/youtube.webp'),
                ),
                Center(
                    child: Text(
                      'SignUp Now',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )),
                Center(
                  child: Text(
                    'Kindly Fill all the details to get started',
                    style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 60, left: 40, right: 40),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Username Field must not be empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Username',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 25.0, horizontal: 10.0),
                          ),
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (_) => FocusScope.of(context)
                              .nextFocus(), // move focus to next
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Email Field must not be empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 25.0, horizontal: 10.0),
                          ),
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (_) => FocusScope.of(context)
                              .nextFocus(), // move focus to next
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (_) =>
                              FocusScope.of(context).nextFocus(),
                          // move focus to next
                          obscureText: !_showPassword,
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Password Field must not be empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 25.0, horizontal: 10.0),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _showPassword = !_showPassword;
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 70,
                                padding: EdgeInsets.symmetric(vertical: 13),
                                child: Center(
                                  child: Text(
                                    _showPassword ? "Hide" : "Show",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blueAccent,
                              minimumSize:
                              Size(MediaQuery.of(context).size.width, 70),
                              // text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              print('Register Clicked');
                            },
                            child: Text('Register'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(30),
                          child: Text('Have an Account? Log In'),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 40, right: 40, bottom: 40),
                        child: Text('or connect with'),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/lego/login_view3_lego/facebook.webp'),
                              ),
                              Container(
                                color: Colors.white,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('assets/lego/login_view3_lego/google.webp'),
                                ),
                              ),
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/lego/login_view3_lego/twitter.webp'),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}


main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
