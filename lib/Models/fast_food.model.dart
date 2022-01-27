class FastFood {
  final String image, title, price, description;
  final int foodId;

  //Create Constructor

  FastFood({
    required this.title,
    required this.image,
    required this.price,
    required this.description,
    required this.foodId,
  });
}

// create fast food list

List<FastFood> fastFood = [
  FastFood(
    title: "Burger",
    image:
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.mCN3PN91GZpXq1JApduObgHaFb%26pid%3DApi&f=1",
    price: "130",
    description:
        "Texas Stuffed Grilled Burgers. Rating: 4.33 stars. 63. A great change to the usual grilled burgers. These burgers are stuffed with ham, cheese, mushrooms, and onions then slow grilled. Grill over hickory or mesquite wood if possible for better flavor! A sure family pleaser! By RHONDA35. Sponsored By Texas Tourism.",
    foodId: 0,
  ),
  FastFood(
    title: "Potato Fry",
    image:
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcentercityteam.com%2Fwp-content%2Fuploads%2F2019%2F01%2Fburger-960x675.jpg&f=1&nofb=1",
    price: "50",
    description:
        "Texas Stuffed Grilled Burgers. Rating: 4.33 stars. 63. A great change to the usual grilled burgers. These burgers are stuffed with ham, cheese, mushrooms, and onions then slow grilled. Grill over hickory or mesquite wood if possible for better flavor! A sure family pleaser! By RHONDA35. Sponsored By Texas Tourism.",
    foodId: 1,
  ),
  FastFood(
    title: "Pizza",
    image:
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi0.wp.com%2Fwww.discoverycooking.com%2Fwp-content%2Fuploads%2F2017%2F02%2Fpizza-1.jpg%3Ffit%3D2426%252C3292&f=1&nofb=1",
    price: "50",
    description:
        "Texas Stuffed Grilled Burgers. Rating: 4.33 stars. 63. A great change to the usual grilled burgers. These burgers are stuffed with ham, cheese, mushrooms, and onions then slow grilled. Grill over hickory or mesquite wood if possible for better flavor! A sure family pleaser! By RHONDA35. Sponsored By Texas Tourism.",
    foodId: 2,
  ),
  FastFood(
    title: "Egg roll",
    image:
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.playfulcooking.com%2Fwp-content%2Fuploads%2F2019%2F09%2Fkolkata-egg-roll-step-14.jpg&f=1&nofb=1",
    price: "40",
    description:
        "Texas Stuffed Grilled Burgers. Rating: 4.33 stars. 63. A great change to the usual grilled burgers. These burgers are stuffed with ham, cheese, mushrooms, and onions then slow grilled. Grill over hickory or mesquite wood if possible for better flavor! A sure family pleaser! By RHONDA35. Sponsored By Texas Tourism.",
    foodId: 3,
  ),
  FastFood(
    title: "Potato Pettis",
    image:
        "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fgrandmotherskitchen.org%2Fuploads%2F7737%2Ffiles%2Frecipe.jpg&f=1&nofb=1",
    price: "20",
    description:
        "Texas Stuffed Grilled Burgers. Rating: 4.33 stars. 63. A great change to the usual grilled burgers. These burgers are stuffed with ham, cheese, mushrooms, and onions then slow grilled. Grill over hickory or mesquite wood if possible for better flavor! A sure family pleaser! By RHONDA35. Sponsored By Texas Tourism.",
    foodId: 4,
  ),
];
