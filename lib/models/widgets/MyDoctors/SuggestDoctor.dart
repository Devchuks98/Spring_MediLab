import 'package:flutter/material.dart';

class DocJohn extends StatelessWidget {
  const DocJohn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              //Doctor Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/doc john.png'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Doctor name
              const Text(
                'Dr. John. Doe \nCardioliogist Special',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 40),
              //Doctor rating
              const Row(
                children: [
                  Text(
                    '5.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DocJane extends StatelessWidget {
  const DocJane({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              //Doctor Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/doc jane.png'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Doctor name
              const Text(
                'Dr. Jane Smith \nPediatrician Special',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 40),

              //Doctor rating
              const Row(
                children: [
                  Text(
                    '4.5',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DocDavid extends StatelessWidget {
  const DocDavid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              //Doctor Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/doc david.png'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Doctor name
              const Text(
                'Dr. David Lee \nDermatologist Special',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 30),

              //Doctor rating
              const Row(
                children: [
                  Text(
                    '3.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DocSarah extends StatelessWidget {
  const DocSarah({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              //Doctor Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/doc sarah.png'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Doctor name
              const Text(
                'Dr. Sarah Joy \nGynecologist Special',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 40),

              //Doctor rating
              const Row(
                children: [
                  Text(
                    '5.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
