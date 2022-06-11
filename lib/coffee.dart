class Coffee{
  String label;
  String day;
  String imageUrl;
  String description;
  String intensity;

  //TODO: add ingredient
  Coffee(
      this.label,
      this.imageUrl,
      this.day,
      this.description,
      this.intensity
      );
  static List<Coffee> samples = [
    Coffee('Espresso','assets/images/espressoimage.jpg' ,'Tuesday, Wednesday', 'is a full-flavored, concentrated form of coffee that is served in “shots.” ', 'Very Strong'),
    Coffee('Americano', 'assets/images/americanoimage.jpg','Friday, Saturday', 'Classic Black Coffee with no sugar and cream', 'Very Strong'),
    Coffee('Latte Mocha','assets/images/lattemochaimage.jpg', 'Sunday, Monday', 'Its coffee and milk ', 'Mild'),
    Coffee('Cold Brew','assets/images/coldbrewimage.jpg' ,'Tuesday, Thursday', 'Americano but its in cold variant', 'Chilled'),
  ];
}

//TODO: ingredient class