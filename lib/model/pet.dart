class Pet {
  final String name;
  final String type;
  final String age;
  final String distance;
  final String address;
  final bool isMale;
  final String userImage;
  final String userName;
  final String datetime;
  final String description;
  final String image;
  final List<String> images;
  Pet({
    this.name,
    this.type,
    this.age,
    this.distance,
    this.datetime,
    this.address,
    this.description,
    this.isMale,
    this.userImage,
    this.userName,
    this.image,
    this.images,
  });
}

List<Pet> petList = [
  Pet(
    name: "Sola",
    type: "Holland Lop",
    isMale: false,
    address: "2105  Westwood Avenue",
    age: "2",
    datetime: "Jan 26, 2020",
    description:
        "I am looking for good people who will shelter my Solo.",
    distance: "Mandalay",
    userImage: "assets/images/user2.jpg",
    userName: "Shi Shi",
    image: "assets/images/1-2-rabbit-png-image.png",
    images: [
      "assets/abys1.png",
      "assets/abys2.png",
      "assets/abys3.png",
    ],
  ),
  Pet(
    name: "Bonny",
    type: "Alaskan",
    isMale: false,
    address: "2105  Westwood Avenue",
    age: "2",
    datetime: "Jan 26, 2020",
    description:
        "My hob requires moving to another country, I don't have the opportunity to take the cat with me. I am looking for good people who will shelter my Solo.",
    distance: "Yangon",
    userImage: "assets/images/user2.jpg",
    userName: "Sandy",
    image: "assets/images/1-2-dog-png-10.png",
    images: [
      "assets/abys1.png",
      "assets/abys2.png",
      "assets/abys3.png",
    ],
  ),
  Pet(
    name: "Bonny",
    type: "Alaskan",
    isMale: false,
    address: "2105  Westwood Avenue",
    age: "2",
    datetime: "Jan 26, 2020",
    description:
    "My hob requires moving to another country, I don't have the opportunity to take the cat with me. I am looking for good people who will shelter my Solo.dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd",
    distance: "Yangon",
    userImage: "assets/images/user2.jpg",
    userName: "Mandy",
    image: "assets/images/8-2-cat-png-5.png",
    images: [
      "assets/abys1.png",
      "assets/abys2.png",
      "assets/abys3.png",
    ],
  ),
];
