import 'package:layout/pizza_data.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final Pizza pizza;
  const MenuItem({super.key, required this.pizza});
  // - MenuItem: Representa um item do menu de pizzas.
  // - extends StatelessWidget: Indica que este widget não possui estado interno.
  // - final Pizza pizza;: Declara um atributo que armazena os dados de uma pizza específica.
  // - const MenuItem({super.key, required this.pizza});: Construtor que recebe uma pizza como argumento obrigatório.
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(12),
        // - Card: Cria um contêiner visual com um efeito de cartão.
        // - elevation: 0: Remove a sombra padrão do cartão.
        // - Padding: Adiciona espaçamento interno de 12 pixels.
        child: (Row(
          children: [
            ColorFiltered(
              colorFilter: pizza.soldOut
                  ? ColorFilter.mode(Colors.grey, BlendMode.saturation)
                  : ColorFilter.mode(Colors.transparent, BlendMode.saturation),
              child: Image.asset(
                "images/${pizza.photoName}",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            // - ColorFiltered: Aplica um filtro para indicar se a pizza está esgotada (soldOut).
            // - Se pizza.soldOut for true, a imagem fica acinzentada (Colors.grey), caso contrário, mantém sua cor normal.
            // - Image.asset: Exibe a imagem da pizza com tamanho de 100x100 e ajuste BoxFit.cover.
            SizedBox(
              width: 12,
            ),
            // - Adiciona um espaçamento horizontal entre a imagem e as informações.
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // - Expanded: Permite que a coluna ocupe o espaço disponível ao lado da imagem.
                // - Column: Organiza os textos verticalmente.
                // - crossAxisAlignment: CrossAxisAlignment.start: Alinha os textos à esquerda.
                children: [
                  // Exibe o nome da pizza em negrito e tamanho 18.
                  Text(
                    pizza.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    // Mostra os ingredientes com um estilo mais discreto.
                    pizza.ingredients,
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  Text(
                    pizza.soldOut ? "sold out" : "\$${pizza.price}",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500),
                  ),
                  // - Exibe "sold out" se a pizza estiver esgotada.
                  // - Caso contrário, mostra o preço (\$${pizza.price}).
                  // - Usa um tom mais suave (Colors.black54) e peso w500.
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}