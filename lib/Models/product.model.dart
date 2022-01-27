class Product {
  final String image, title, price, description;
  final int id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });
}

List<Product> products = [
  Product(
    id: 1,
    image:
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ffabfoodies.in%2Fwp-content%2Fuploads%2F2019%2F01%2FPotato-Samosa.jpg&f=1&nofb=1",
    title: "Samosa",
    price: "20",
    description:
        "A samosa is a fried or baked pastry with a savory filling, including ingredients such as spiced potatoes, onions, peas, chicken and/or other meats. It may take different forms, including triangular, cone, or half-moon shapes, depending on the region.",
  ),
  Product(
    id: 2,
    image:
        "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fimg.tasteofcity.com%2Ftasteimages%2F201612%2Fimage_original%2F1561AFD15D56C171_33_Gulab_Jamuns.jpg&f=1&nofb=1",
    title: "Dehati Rasgulla",
    price: "20",
    description:
        "Rasgulla, also known as Rosogolla, Rosgola, or Rasagola is a South Asian syrupy dessert popular in the Indian subcontinent and regions with South Asian diaspora. It is made from ball-shaped dumplings of chhena and semolina dough, cooked in light sugar syrup made of sugar.",
  ),
  Product(
    id: 3,
    image:
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi5.walmartimages.com%2Fasr%2Fc73ba7ba-a783-4447-aa82-dfaefe8f0420_1.a723ecf33aff4aee6f4ee5db1f918bdc.jpeg&f=1&nofb=1",
    title: "Pepsi",
    price: "24",
    description:
        "Pepsi is a carbonated soft drink manufactured by PepsiCo. Originally created and developed in 1893 by Caleb Bradham and introduced as Brad's Drink, it was renamed as Pepsi-Cola in 1898, and then shortened to Pepsi in 1961.",
  ),
  Product(
    id: 4,
    image:
        "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fhealthyliving.natureloc.com%2Fwp-content%2Fuploads%2F2015%2F07%2FMilk-Tea-Cup.jpg&f=1&nofb=1",
    title: "Milk Tea",
    price: "20",
    description:
        "A delicious snack made from potato, onion, and spices. It is a healthy and tasty snack.",
  ),
  Product(
    id: 5,
    image:
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.mOlcGs_Ya7bKNpxac6yc-wHaE8%26pid%3DApi&f=1",
    title: "Chapati",
    price: "20",
    description:
        "A delicious snack made from potato, onion, and spices. It is a healthy and tasty snack.",
  ),
];
