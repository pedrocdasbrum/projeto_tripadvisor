import 'package:flutter/material.dart';
import 'package:projeto_tripadvisor/models/trip.dart';
import 'package:projeto_tripadvisor/screens/Widgets/descripitionTrip.dart';
import 'package:projeto_tripadvisor/screens/Widgets/photosTrip.dart';

class Home extends StatelessWidget {
  final Trip trip = Trip(
    photo: "assets/images/Banner.jpg",
    location: "Paris - França",
    descripition:
        "É impossível não se render aos encantos de Paris, a bela capital francesa e destino turístico frequentado por milhões de pessoas todos os anos. Vibrante, charmosa, romântica, divertida, além de berço da cultura e da arte, a Cidade Luz, como é chamada, possui uma infindável lista de qualidades.",
    photosDescripition1: "Musée D'Orsay",
    photosDescripition2: "Catedral de Notre Dame",
    photosDescripition3: "Sainte Chapelle",
    photosDescripition4: "Museu Do Louvre",
    photosDescripition5: "Arco Do Triunfo",
    photosDescripition6: "Palais Garnier",
    photosDescripition7: "Jardim De Luxemburgo",
    photosDescripition8: "Rio Sena",
    photosDescripition9: "Torre Eiffel",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              trip.photo,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 3,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 15,
                  ),
                  Text(
                    trip.location,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_outlined,
                        size: 15,
                      ),
                      Icon(
                        Icons.star_outlined,
                        size: 15,
                      ),
                      Icon(
                        Icons.star_outlined,
                        size: 15,
                      ),
                      Icon(
                        Icons.star_outlined,
                        size: 15,
                      ),
                      Icon(
                        Icons.star_outlined,
                        size: 15,
                      ),
                    ],
                  ),
                  Text(
                    "32 avaliações",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            DescripitionTrip(trip),
            PhotosTrip(trip),
          ],
        ),
      ),
    );
  }
}
