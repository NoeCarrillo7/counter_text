import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Contador",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              "NOE CARRILLO LIZARDI",
              style: TextStyle(color: Colors.blueAccent),
            ),
            const SizedBox(height: 10),
            const Text("Numero de clicks"),
            Text("$cont"),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => _sumar(),
            backgroundColor: Colors.purple, // Cambié el color del botón flotante
          ),
          const SizedBox(width: 10,),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => _restar(),
            backgroundColor: Colors.purple, // Cambié el color del botón flotante
          ),
          const SizedBox(width: 10,),
          FloatingActionButton(
            child: const Icon(Icons.exposure_zero),
            onPressed: () => _restablecer(),
            backgroundColor: Colors.purple, // Cambié el color del botón flotante
          ),
        ],
      ),
    );
  }

  void _sumar() {
    setState(() {
      cont++;
    });
  }

  void _restar() {
    if (cont > 0) {
      setState(() {
        cont--;
      });
    }
  }

  void _restablecer() {
    setState(() {
      cont = 0;
    });
  }
}
