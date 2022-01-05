class Product {
  final String image, title, price;
  final int id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

List<Product> products = [
  Product(
    id: 1,
    image:
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ffabfoodies.in%2Fwp-content%2Fuploads%2F2019%2F01%2FPotato-Samosa.jpg&f=1&nofb=1",
    title: "Samosa",
    price: "16",
  ),
  Product(
    id: 2,
    image:
        "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fimg.tasteofcity.com%2Ftasteimages%2F201612%2Fimage_original%2F1561AFD15D56C171_33_Gulab_Jamuns.jpg&f=1&nofb=1",
    title: "Dehati Rasgulla",
    price: "26",
  ),
  Product(
    id: 3,
    image:
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi5.walmartimages.com%2Fasr%2Fc73ba7ba-a783-4447-aa82-dfaefe8f0420_1.a723ecf33aff4aee6f4ee5db1f918bdc.jpeg&f=1&nofb=1",
    title: "Pepsi",
    price: "13",
  ),
  Product(
    id: 4,
    image:
        "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fhealthyliving.natureloc.com%2Fwp-content%2Fuploads%2F2015%2F07%2FMilk-Tea-Cup.jpg&f=1&nofb=1",
    title: "Milk Tea",
    price: "36",
  ),
  Product(
    id: 5,
    image:
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.mOlcGs_Ya7bKNpxac6yc-wHaE8%26pid%3DApi&f=1",
    title: "Chapati",
    price: "16",
  ),
];
