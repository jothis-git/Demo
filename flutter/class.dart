class Car {
  var Brand = "";
  var Model = "";
  var Year;

  Car(var Brand, var Model, var Year) {
    this.Brand = Brand;
    this.Model = Model;
    this.Year = Year;
  }
}

void main() {
  Car c = new Car("Toyota", "Corolla", 2020);
  print("Brand: ${c.Brand} Model: ${c.Model}  Year: ${c.Year}");
}
