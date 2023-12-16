class Drink {
  final String imageUrl;
  final String name;
  final String category;
  final int discount;
  final int alcohol;
  final int fruit;
  final int water;
  final int price;

  Drink({
    this.imageUrl='',
    this.name='',
    this.category='',
    this.discount = 0, // Default value for discount
    this.alcohol = 0,  // Default value for alcohol
    this.fruit = 0,    // Default value for fruit
    this.water = 0,    // Default value for water
    required this.price,  // Non-nullable property with the 'required' keyword
  });
}
