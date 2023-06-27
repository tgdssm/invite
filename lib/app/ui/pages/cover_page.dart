import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
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
                right: -60,
                child: Transform.rotate(
                  angle: 180,
                  child: Image.asset('assets/images/footprint.gif'),
                ),
              ),
              Column(
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
                        'SÁBADO',
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
                        '15\nJULHO',
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
                        '15h30',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'HARRYP',
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
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
                    onTap: () {},
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
                    onTap: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}
