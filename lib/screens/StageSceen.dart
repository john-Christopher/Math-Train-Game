
import 'package:esimapp/stages/BacacayStage.dart';
import 'package:esimapp/stages/CamaligStage.dart';
import 'package:esimapp/stages/DaragaStage.dart';
import 'package:esimapp/stages/LegazpiStage.dart';
import 'package:esimapp/stages/MalilipotStage.dart';
import 'package:esimapp/stages/Sto_Domingo.dart';
import 'package:esimapp/stages/TabacoStage.dart';
import 'package:flutter/material.dart';


class StageScreenWidget extends StatefulWidget {
  const StageScreenWidget({Key? key}) : super(key: key);

  @override
  _StageScreenWidgetState createState() => _StageScreenWidgetState();
}

class _StageScreenWidgetState extends State<StageScreenWidget> {


  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF1F4F8),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 1,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  image: DecorationImage(
                    image: Image.asset(
                      'assets/img/new_bg_img.jpg',
                    ).image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0x47848484),
                  ),
                  child: SingleChildScrollView(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.00, -1.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(45, 25, 0, 0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TabacoStage()));
                                },
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: const Color(0xFFB8D159),
                                      width: 4,
                                    ),
                                  ),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Colors.transparent,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Stack(
                                      children: [
                                          Container(
                                            width: 120,
                                            height: 120,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/img/tabaco.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0x74000000)
                                          ),
                                        ),
                                        const Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                0, 35, 0, 0),
                                            child: Text(
                                              'Tabaco City',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                    fontFamily: 'Open Sans',
                                                    color:
                                                        Colors.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.00, -1.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(105, 0, 0, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MalilipotStage()));
                                  },
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Colors.transparent,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 120,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/img/malilipot.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0x74000000)
                                          ),
                                        ),
                                        const Align(
                                          alignment: AlignmentDirectional(0.00, 0.00),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                0, 35, 0, 0),
                                            child: Text(
                                              'Malilipot Albay',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                    fontFamily: 'Open Sans',
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.00, -1.00),
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(245, 75, 0, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BacacayStage()));
                                  },
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Colors.transparent,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 120,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/img/bacacay.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0x74000000)
                                          ),
                                        ),
                                        const Align(
                                          alignment: AlignmentDirectional(0.00, 0.00),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                0, 35, 0, 0),
                                            child: Text(
                                              'Bacacay Albay',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                    fontFamily: 'Open Sans',
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.00, -1.00),
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(245, 75, 0, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const StoDomingoStage()));
                                  },
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Colors.transparent,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 120,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/img/sto_domingo.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0x74000000)
                                          ),
                                        ),
                                        const Align(
                                          alignment: AlignmentDirectional(0.00, 0.00),
                                          child: Text(
                                            'Sto Domgingo Albay',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                  fontFamily: 'Open Sans',
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.00, -1.00),
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(245, 75, 0, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LegazpiStage()));
                                  },
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Colors.transparent,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 120,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/img/sto_domingo.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0x74000000)
                                          ),
                                        ),
                                        const Align(
                                          alignment: AlignmentDirectional(0.00, 0.00),
                                          child: Text(
                                            'Legazpi City',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                  fontFamily: 'Open Sans',
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.00, -1.00),
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(245, 75, 0, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DaragaStage()));
                                  },
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Colors.transparent,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 120,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/img/bacacay.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0x74000000)
                                          ),
                                        ),
                                        const Align(
                                          alignment: AlignmentDirectional(0.00, 0.00),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                0, 35, 0, 0),
                                            child: Text(
                                              'Daraga Albay',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                    fontFamily: 'Open Sans',
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.00, -1.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(105, 0, 0, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => CamaligStage()));
                                  },
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Colors.transparent,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 120,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/img/malilipot.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0x74000000)
                                          ),
                                        ),
                                        const Align(
                                          alignment: AlignmentDirectional(0.00, 0.00),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                0, 35, 0, 0),
                                            child: Text(
                                              'Camalig Albay',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                    fontFamily: 'Open Sans',
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
