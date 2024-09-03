import 'package:flutter/material.dart';

class CovenantATMScreen extends StatelessWidget {
  const CovenantATMScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: const Color(0xFF0A1E36),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFFFBF45),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SimpleInterestForm(),
          ),
        ),
      ),
    );
  }
}

class SimpleInterestForm extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  String result = '';

  void calculate(BuildContext context) {
    int amount = int.tryParse(controller.text) ?? 0;

    if (amount % 10000 == 0) {
        List<int> usedBills = contarDenominacion(amount);
        result = 'Billetes de 10: ${usedBills[0]}\n'
        'Billetes de 20: ${usedBills[1]}\n'
        'Billetes de 50: ${usedBills[2]}\n'
        'Billetes de 100: ${usedBills[3]}';
        
    }else{
        result = '\n El Capital ingresado no es valido\n \n ¡Por favor ingrese nuevamente el capital!';
        
    }
    
    

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Resultado del retiro'),
          content: Text(result),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

void clearAmount() {
    controller.clear();
  }


  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Bienvenidos al Cajero Covenant Money!",
              style: textStyles.headline5,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset("assets/images/tarjetaCredito.png"),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Text("¿Cuánto desea retirar?", style: textStyles.bodyText1),
            const SizedBox(height: 20),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Capital',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   ElevatedButton(
              onPressed: () => calculate(context),
              child: const Text('Calcular'),
            ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: clearAmount,
                  child: const Text('Limpiar'),
                ),
              ],
            )
           
          ],
        ),
      ),
    );
  }
}

List<int> contarDenominacion(int valor) {
  List<int> billetes = [10000, 20000, 50000, 100000];
  List<int> usados = [0, 0, 0, 0];
  int cantidad = 0;
  int contador = 0;

  while (valor > cantidad) {
    for (int i = contador; i < 4; i++) {
      if (cantidad + billetes[i] <= valor) {
        cantidad += billetes[i];
        usados[i] += 1;
      }
    }
    contador = (contador + 1) % 4;
  }

  return usados;
}
