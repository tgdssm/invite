import 'package:flutter/material.dart';

final hygiene = [
  'Pacote de fraldas e Pomada para assaduras.',
  'Pacote de fraldas e Lenços umedecidos.',
  'Fraldas de pano e Pomada para assaduras',
  'Fraldas de pano e Lenços umedecidos',
  'Sabone e Shampoo neutro para bebê',
  'Toalha de banho com capuz',
  'Esterilizador de mamadeiras de microondas',
  'lixeira com pedal',
  'Trocador de bolsa',
  'Aspirador nasal',
];

final food = [
  'Babador',
  'Copinho com alça para bebê',
  'Paninho de boca',
  'Aquecedor de mamadeira',
  'Talheres de alimentação',
  'Pratos de alimentação'
];

final toys = [
  'Mordedor',
  'Brinquedos para banho'
];

final clothes = [
  'Bodies manga curta e manga longa',
  'Calças',
  'Meias, luvas e toucas',
  'Sapatinhos',
  'Canguru ou Sling'
];

final room = [
  'Travesseiro antirrefluxo',
  'Jogo de lençol para berço',
  'Protetor de colchão',
  'Almofadas protetoras de berço',
  'Manta',
  'Cobertor',
  'Fronhas'
];

final others = [
  'Bolsas de bebe pequena, media ou grande',
  'Mosquiteiro para carrinho de bebê',
  'Lençois para carrinho',
];

class TooltipsListPage extends StatefulWidget {
  const TooltipsListPage({Key? key}) : super(key: key);

  @override
  State<TooltipsListPage> createState() => _TooltipsListPageState();
}

class _TooltipsListPageState extends State<TooltipsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Center(
                child: Opacity(
                  opacity: .3,
                  child: Image.asset('assets/images/baby_potter.png'),
                ),
              ),
              Opacity(
                opacity: .5,
                child: Container(
                  color: Colors.black,
                ),
              ),
              ListView(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  expandable('Higiene', hygiene, context),
                  expandable('Alimentação', food, context),
                  expandable('Roupas', clothes, context),
                  expandable('Quarto', room, context),
                  expandable('Brinquedos', toys, context),
                  expandable('Outros', others, context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  ExpansionTile expandable(
    String title,
    List<String> items,
    BuildContext context,
  ) {
    int index = switch (title) {
      'Higiene' => 0,
      'Alimentação' => 1,
      'Roupas' => 2,
      _ => 3,
    };
    return ExpansionTile(
      trailing: Image.asset(
        'assets/images/scar.png',
        height: 20,
        color: Colors.white,
      ),
      expandedAlignment: Alignment.center,
      title: Text(
        title,
        style: const TextStyle(fontSize: 30, color: Colors.white),
      ),
      children: [
        ...items.map(
          (e) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 6),
            width: MediaQuery.sizeOf(context).width,
            child: Text(
              e,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
