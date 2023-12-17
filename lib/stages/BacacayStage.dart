import 'package:esimapp/component/SettingsDrop.dart';
import 'package:esimapp/levels/Stage3Level1.dart';
import 'package:flutter/material.dart';

class BacacayStage extends StatelessWidget {
  const BacacayStage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: StageScreenBacacay(),
      ),
    );
  }
}


class StageScreenBacacay extends StatefulWidget {
  const StageScreenBacacay({super.key});

  @override
  State<StageScreenBacacay> createState() => _StageScreenBacacayState();
}

class _StageScreenBacacayState extends State<StageScreenBacacay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/img/sto_domingo_park.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Color(0x47848484),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SettingsDrop(),
                  ],
                ),
                SimpleDialog(
                  elevation: 4,
                  contentPadding: const EdgeInsetsDirectional.fromSTEB(15, 15, 0, 15),
                  backgroundColor: const Color(0x76000000),
                  title: const Text(
                    'What is the standard form of f(x)= 3^x?',
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 25),
                      child: TextFormField(
                        autofocus: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          hintText: 'Type here . . .',
                          hintStyle: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w500,
                          ),
                          isDense: true,
                          focusColor: Color(0xFFFFFFFF),
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Stage3Level1()));
                      }, 
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}