class Pizza {
  final String name;
  final String ingredients;
  final String photoName;
  final int price;
  final bool soldOut;

// - Define um modelo de dados para representar uma pizza.
// - Usa final para garantir que os valores não mudam depois de criados.

  Pizza({
    required this.name,
    required this.ingredients,
    required this.photoName,
    required this.price,
    required this.soldOut,
  });

  // - Define um construtor que exige os cinco atributos (name, ingredients, photoName, price e soldOut
}

List<Pizza> pizzaData = [
// Cria uma lista de pizzas (pizzaData) baseada na classe Pizza.
// Cada item da lista é uma instância de Pizza.

  Pizza(
    name: 'Focaccia',
    ingredients: 'Bread with italian olive oil and rosemary',
    price: 6,
    photoName: 'focaccia.jpg',
    soldOut: false,
  ),
  Pizza(
    name: 'Pizza Margherita',
    ingredients: 'Tomato and mozarella',
    price: 10,
    photoName: 'margherita.jpg',
    soldOut: false,
  ),
  Pizza(
    name: 'Pizza Spinaci',
    ingredients: 'Tomato, mozarella, spinach, and ricotta cheese',
    price: 12,
    photoName: 'spinaci.jpg',
    soldOut: false,
  ),
  Pizza(
    name: 'Pizza Funghi',
    ingredients: 'Tomato, mozarella, mushrooms, and onion',
    price: 12,
    photoName: 'funghi.jpg',
    soldOut: false,
  ),
  Pizza(
    name: 'Pizza Salamino',
    ingredients: 'Tomato, mozarella, and pepperoni',
    price: 15,
    photoName: 'salamino.jpg',
    soldOut: true,
  ),
  Pizza(
    name: 'Pizza Prosciutto',
    ingredients: 'Tomato, mozarella, ham, aragula, and burrata cheese',
    price: 18,
    photoName: 'prosciutto.jpg',
    soldOut: false,
  ),
];