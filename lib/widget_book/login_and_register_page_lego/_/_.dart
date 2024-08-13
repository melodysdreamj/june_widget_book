import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Gap(30),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 300,
                child: Image.asset('assets/lego/login_and_register_page_lego/main.webp'),
              ),
            ),
            Spacer(),
            Column(
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Create an account and access the dashboard page',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blueAccent,
                        minimumSize: Size(MediaQuery.of(context).size.width, 70),
                        // text color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text('Getting Started'),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text("Already have an account ? Log In"))
                ],
              ),
            ),
            Gap(10),
          ],
        ),
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
