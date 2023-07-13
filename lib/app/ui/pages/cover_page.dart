import 'package:flutter/material.dart';
import 'package:invite/app/ui/pages/tooltips_list_page.dart';
import 'package:invite/app/ui/transitions/bottom_to_top.dart';
import 'package:url_launcher/url_launcher.dart';

class CoverPage extends StatefulWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  State<CoverPage> createState() => _CoverPageState();
}

class _CoverPageState extends State<CoverPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<Offset> animation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat(reverse: true);
    animation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(.05, .09),
    ).animate(animationController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: -50,
                left: 0,
                child: Transform.rotate(
                  angle: 30,
                  child:
                      Image.asset('assets/images/footprint2.gif', height: 200),
                ),
              ),
              Positioned(
                top: -100,
                left: -200,
                child: Transform.rotate(
                  angle: 180,
                  child: Image.asset('assets/images/footprint.gif'),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                height: MediaQuery.sizeOf(context).height,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SlideTransition(
                        position: animation,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Image.asset(
                            'assets/images/pomo.png',
                            height: 100,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'CHÁ DE BEBÊ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'HARRYP',
                          fontSize: 25,
                        ),
                      ),
                      const Text(
                        'LUIZ LEORIO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'HARRYP',
                          fontSize: 80,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'DOMINGO',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'HARRYP',
                              fontSize: 20,
                            ),
                          ),
                          Image.asset(
                            'assets/images/scar.png',
                            width: 50,
                            color: Colors.yellowAccent,
                          ),
                          const Text(
                            '16\nJULHO',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'HARRYP',
                              fontSize: 20,
                            ),
                          ),
                          Image.asset(
                            'assets/images/scar.png',
                            width: 50,
                            color: Colors.yellowAccent,
                          ),
                          const Text(
                            '16h',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'HARRYP',
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(BottomToTopBuilder(
                              child: const TooltipsListPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          width: 200,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/images/lamp.png',
                                height: 30,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'DICAS',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () async {
                          await launchUrl(
                            Uri.parse(
                              "https://www.google.com/maps/place/La+Belle+Eventos/@-17.3225936,-44.9212009,17z/data=!3m1!4b1!4m6!3m5!1s0xaa0d4eced062cd:0x88cf85a73146d902!8m2!3d-17.3225936!4d-44.918626!16s%2Fg%2F11h4xhbwyb?entry=ttu"
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          width: 200,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/localization.png',
                                height: 15,
                                color: Colors.white,
                              ),
                              const Text(
                                'LOCALIZAÇÃO',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () async {
                          const message = 'Estarei lá!';
                          const phone = '5538999501703';
                          if (MediaQuery.sizeOf(context).width > 1000) {
                            await launchUrl(Uri.parse(
                                'https://wa.me//$phone?text=$message'));
                          } else {
                            await launchUrl(Uri.parse(
                                'whatsapp://send?phone=$phone&text=$message'));
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          width: 200,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/pomo.png',
                                height: 30,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'CONFIRMAR\nPRESENÇA',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
