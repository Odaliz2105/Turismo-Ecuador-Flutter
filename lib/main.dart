import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter Layout Demo';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.grey.shade100,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            '🇪🇨 Turismo Ecuador',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              ImageSection(image: 'images/mitad_del_mundo.jpg'),
              TitleSection(
                name: 'Mitad del Mundo',
                location: 'Quito',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'La Ciudad Mitad del Mundo es uno de los lugares turísticos más visitados del Ecuador.',
              ),

              ImageSection(image: 'images/cotopaxi.jpg'),
              TitleSection(
                name: 'Parque Nacional Cotopaxi',
                location: 'Latacunga',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'El volcán Cotopaxi es uno de los volcanes activos más altos del mundo.',
              ),

              ImageSection(image: 'images/quilotoa.jpg'),
              TitleSection(
                name: 'Laguna Quilotoa',
                location: 'Cotopaxi',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'La laguna Quilotoa es famosa por el color turquesa de sus aguas.',
              ),

              ImageSection(image: 'images/banos.png'),
              TitleSection(
                name: 'Baños de Agua Santa',
                location: 'Tungurahua',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Baños es conocida por sus cascadas, deportes extremos y turismo de aventura.',
              ),

              ImageSection(image: 'images/cajas.jpg'),
              TitleSection(
                name: 'Parque Nacional Cajas',
                location: 'Cuenca',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'El Parque Nacional Cajas cuenta con más de 200 lagunas y una gran biodiversidad.',
              ),

              ImageSection(image: 'images/malecon2000.jpg'),
              TitleSection(
                name: 'Malecón 2000',
                location: 'Guayaquil',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'El Malecón 2000 es uno de los principales atractivos turísticos de Guayaquil.',
              ),

              ImageSection(image: 'images/montanita.jpg'),
              TitleSection(
                name: 'Montañita',
                location: 'Santa Elena',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Montañita es famosa por sus playas, surf y vida nocturna.',
              ),

              ImageSection(image: 'images/yasuni.jpg'),
              TitleSection(
                name: 'Parque Nacional Yasuní',
                location: 'Orellana',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'El Yasuní es una de las zonas con mayor biodiversidad del planeta.',
              ),

              ImageSection(image: 'images/san_cristobal.jpg'),
              TitleSection(
                name: 'Isla San Cristóbal',
                location: 'Galápagos',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'San Cristóbal es una de las principales islas del archipiélago de Galápagos.',
              ),

              ImageSection(image: 'images/las_penas.jpg'),
              TitleSection(
                name: 'Barrio Las Peñas',
                location: 'Guayaquil',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Las Peñas es el barrio más antiguo de Guayaquil y un importante atractivo histórico.',
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Hecho por Odaliz Balseca',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatefulWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  State<TitleSection> createState() => _TitleSectionState();
}

class _TitleSectionState extends State<TitleSection> {
  bool isFavorite = true;
  int favoriteCount = 41;

  void toggleFavorite() {
    setState(() {
      if (isFavorite) {
        favoriteCount--;
        isFavorite = false;
      } else {
        favoriteCount++;
        isFavorite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 5,
      ),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.location,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(
                isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.red,
                size: 30,
              ),
              onPressed: toggleFavorite,
            ),
            Text(
              '$favoriteCount',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        ButtonWithText(
          icon: Icons.call,
          label: 'CALL',
        ),
        ButtonWithText(
          icon: Icons.near_me,
          label: 'ROUTE',
        ),
        ButtonWithText(
          icon: Icons.share,
          label: 'SHARE',
        ),
      ],
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.teal,
          size: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Text(
        description,
        textAlign: TextAlign.justify,
        style: const TextStyle(
          fontSize: 15,
          height: 1.5,
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          image,
          width: double.infinity,
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}