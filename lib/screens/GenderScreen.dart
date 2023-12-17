import 'package:esimapp/component/GenderToggle.dart';
import 'package:esimapp/main.dart';
import 'package:esimapp/screens/TitleScreen.dart';
import 'package:flutter/material.dart';
import '../component/global.dart' as global;


class GenderScreen extends StatelessWidget {

  final String name;
  final List<bool> _selectedImage = global.selectedImage;
  

  GenderScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(15, 55, 25, 25),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => const MyApp(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 32,
                          color: Color(0xFF333d29),
                          shadows: <Shadow>[
                              Shadow(
                                offset: Offset(3, 3),
                                blurRadius: 7,
                                color: Color(0xFFb6ad90),
                              )
                            ],
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
                        padding: const EdgeInsetsDirectional.fromSTEB(10, 35, 10, 0),
                        child: Center(
                          child: SizedBox(
                            width: 350,
                            child: Text(
                              'Hi, \n$name',
                              style: const TextStyle(
                                fontFamily: 'Rubber',
                                fontSize: 42,
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
                          )
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 5),
                        child: GenderToggle()
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
                            if(!_selectedImage.contains(true)){
                              const genderReq = SnackBar(
                                content: Text(
                                  'Please select gender',
                                ),
                              );

                              ScaffoldMessenger.of(context).showSnackBar(genderReq);
                            }else{
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const TitleScreen())
                              );
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
                            'Proceed',
                            style: TextStyle(
                              color: Color(0xFF333d29),
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
              ),
          ),
        ),
      );
  }
}