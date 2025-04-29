import 'package:layout/menu_Item.dart';
import 'package:layout/pizza_data.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text("Pizza menu"),
        // Scaffold: Estrutura básica do layout.
        // AppBar: Barra superior com o título "Pizza menu".
      ),
      // Usa Column para organizar os widgets verticalmente.
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children:
                    pizzaData.map((pizza) => MenuItem(pizza: pizza)).toList(),
              ),
            ),
          ),
          // Expanded: Faz com que a lista ocupe o espaço disponível.
          // SingleChildScrollView: Permite rolar a lista de itens.
          // pizzaData.map((pizza) => MenuItem(pizza: pizza)).toList(): Transforma a lista de dados em uma lista de widgets MenuItem.
          if (isOpen())
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Order now!"),
              ),
            )
            // - O botão "Order now!" só aparece se a pizzaria estiver aberta.
            // - isOpen(): Função que verifica o horário de funcionamento.
        ],
      ),
    );
  }

  bool isOpen() {
    var horaInicial = 19;
    var horaFinal = 23;
    var horaAtual = DateTime.now().hour;

    return horaAtual >= horaInicial && horaAtual < horaFinal;

    // - Define o horário de funcionamento da pizzaria (19h às 23h).
    // - Verifica se a hora atual está dentro desse intervalo.
  }

  List<MenuItem> buildItems() {
    // Lista Pizza => Lista MenuItem
    List<MenuItem> items = [];
    for (var pizza in pizzaData) {
      items.add(MenuItem(pizza: pizza));
    }
    return items;
   }
  // - Alternativa para criar a lista de itens manualmente, sem usar .map(), usando for.
}