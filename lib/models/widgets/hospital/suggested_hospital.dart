import 'package:flutter/material.dart';

//American hospital
class American extends StatelessWidget {
  const American({super.key});

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
              //Hospital Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/american.jpeg'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Hospital name
              const Text(
                'American Hospital \nSpecial',
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

//Apollo Reach Hospital
class ApolloReach extends StatelessWidget {
  const ApolloReach({super.key});

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
              //Hospital Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/apolloreach.jpg'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Hospital name
              const Text(
                'Apollo Hospital \nSpecial',
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

//Charite Hospital
class Charite extends StatelessWidget {
  const Charite({super.key});

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
              //Hospital Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/charite.jpeg'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Hospital name
              const Text(
                'Charite Hospital \nSpecial',
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

//Dell Angello Hospital
class DellAngello extends StatelessWidget {
  const DellAngello({super.key});

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
              //Hospital Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/dellangelo.jpeg'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Hospital name
              const Text(
                'Dell Hospital \nSpecial',
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

//FMC Hospital
class FMC extends StatelessWidget {
  const FMC({super.key});

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
              //Hospital Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/fmc.jpg'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Hospital name
              const Text(
                'F.M.C Hospital \nSpecial',
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

//London Bridge Hospital
class LondonBridge extends StatelessWidget {
  const LondonBridge({super.key});

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
              //Hospital Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/londonbridge.jpeg'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Hospital name
              const Text(
                'London Hospital \nSpecial',
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

//New York Hospital
class NewYork extends StatelessWidget {
  const NewYork({super.key});

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
              //Hospital Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/newyork.jpeg'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Hospital name
              const Text(
                'New York Hospital \nSpecial',
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

//St. George Hospital
class SaintGeorge extends StatelessWidget {
  const SaintGeorge({super.key});

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
              //Hospital Avatar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/stgeorge.jpeg'),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),

              //Hospital name
              const Text(
                'St. George \nSpecial',
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
