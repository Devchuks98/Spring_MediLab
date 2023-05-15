import 'package:flutter/material.dart';

//Valdoxan
class Valdoxan extends StatelessWidget {
  const Valdoxan({super.key});

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
              //Drug Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/Valdoxan.jpeg'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Drug name
              const Text(
                'Valdoxan \nSpecial',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 100),
            ],
          ),
        ],
      ),
    );
  }
}

//Antibiotic
class Antibiotic extends StatelessWidget {
  const Antibiotic({super.key});

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
              //drug Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/antibiotic.jpg'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Drug name
              const Text(
                'Antibiotic \nSpecial',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 100),
            ],
          ),
        ],
      ),
    );
  }
}

//Gastro
class Gastro extends StatelessWidget {
  const Gastro({super.key});

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
              //Drug Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/gastro.jpeg'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Drug name
              const Text(
                'Gastro \nSpecial',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 100),
            ],
          ),
        ],
      ),
    );
  }
}

//Napaextra
class NapaExtra extends StatelessWidget {
  const NapaExtra({super.key});

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
              //Drug Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/napaextra.jpeg'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Drug name
              const Text(
                'NapaExta \nSpecial',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 100),
            ],
          ),
        ],
      ),
    );
  }
}

//paracetamol
class Paracetamol extends StatelessWidget {
  const Paracetamol({super.key});

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
              //Drug Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/paracetamol.jpeg'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Drug name
              const Text(
                'paracetamol \nSpecial',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 100),
            ],
          ),
        ],
      ),
    );
  }
}

//Skincote
class Skincote extends StatelessWidget {
  const Skincote({super.key});

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
              //Drug Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/skincote.png'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Drug name
              const Text(
                'Skincote \nSpecial',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 100),
            ],
          ),
        ],
      ),
    );
  }
}

//Sudrex
class Sudrex extends StatelessWidget {
  const Sudrex({super.key});

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
              //Drug Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/sudrex.jpg'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Drug name
              const Text(
                'Sudrex \nSpecial',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 100),
            ],
          ),
        ],
      ),
    );
  }
}

//Vitamin C
class VitaminC extends StatelessWidget {
  const VitaminC({super.key});

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
              //Drug Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/vitaminc.jpg'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Drug name
              const Text(
                'Vitamin C \nSpecial',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 100),
            ],
          ),
        ],
      ),
    );
  }
}
