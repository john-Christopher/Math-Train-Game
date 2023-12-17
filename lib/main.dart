import 'package:esimapp/component/AlertDialog.dart';
import 'package:esimapp/component/BgMusic.dart';
import 'package:esimapp/screens/AdminScreen.dart';
import 'package:esimapp/screens/GenderScreen.dart';
import 'package:esimapp/screens/TitleScreen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './component/global.dart' as globals;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await BgMusic();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExitDialog(),
    );
  }
}


bool _isRegistered = false; // Initialize with a default value

class ExitDialog extends StatefulWidget {
  const ExitDialog({super.key});

  @override
  State<ExitDialog> createState() => _ExitDialogState();
}

class _ExitDialogState extends State<ExitDialog> {

  @override
  void initState() {
    super.initState();
    checkRegistrationStatus();
  }

  Future<void> checkRegistrationStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool registered = prefs.getBool('isRegistered') ?? false; // Change the key here

    setState(() {
      _isRegistered = registered;
    });
  }


  Future<void> setRegistrationStatus(bool isRegistered) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isRegistered', isRegistered); // Use the same key here
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/new_bg_img.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color.fromARGB(71, 132, 132, 132),
          ),
          child: _isRegistered ? const TitleScreen() : const NameScreen(),
        ),
      ),
    );
  }
}




class NameScreen extends StatefulWidget {
  const NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {

  
  final TextEditingController textController = TextEditingController();
  final databaseRef = FirebaseDatabase.instance.ref();
  bool _isNull = false;

  final bgMusic = const BgMusic();


  void addData(String name) {
    databaseRef.child('users').push().set({'name': name});
  }


  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bgMusic,
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(25, 55, 15, 25),
                child: IconButton(
                  onPressed: () => showDialog<String>(
                    context: context, 
                    builder: (BuildContext context) => const CustomAlertDialog(),
                  ), 
                  icon: const Icon(
                    Icons.logout_rounded,
                    size: 32,
                    color: Color(0xFFFFFFFF),
                    shadows: <Shadow>[
                        Shadow(
                          offset: Offset(3, 3),
                          blurRadius: 7,
                          color: Color(0xFF333d29)
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                  child: Center(
                    child: Text(
                    'Welcome to \nMath-Train \nGame',
                    style: TextStyle(
                      fontFamily: 'Rubber',
                      fontSize: 52,
                      color: Color(0xFFFFFFFF),
                      shadows: <Shadow>[
                          Shadow(
                            offset: Offset(4, 5),
                            blurRadius: 7.0,
                            color: Color(0xFF333d29),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 185, 15, 5),
                  child: SizedBox(
                    width: 340,
                    height: 50,
                    child: TextField(
                      controller: textController,
                      autofocus: false,
                      decoration: InputDecoration(
                        label: const Text(
                          'What is your name?',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(192, 178, 179, 177),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            width: 2,
                          )
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 5, 15, 15),
                  child: TextButton(
                    onPressed: () {
                      if(_isNull = textController.text.isEmpty){
                        const fieldReq = SnackBar(
                          content: Text(
                            'Field is required',
                          ),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(fieldReq);
                      }else{
                        addData(textController.text);
                        if(textController.text == 'Admin' || textController.text == 'admin') {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminStuffScreen()));
                        }else {
                          _nextPage(context);
                        }
                      }
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                        Color(0xFFFFFFFF),
                      ),
                      shape: MaterialStatePropertyAll<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                      fixedSize: MaterialStatePropertyAll<Size>(
                        Size.fromWidth(340),
                      )
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Open Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),  
          ],
        );
  }
  void _nextPage(BuildContext context) {
    String name = textController.text;

    setState(() {
      _isRegistered = true;
    });

    Navigator.push(context, MaterialPageRoute(builder: (context) => GenderScreen(name: name)));
  }
}