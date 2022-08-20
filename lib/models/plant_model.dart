class Plant {
  int id;
  String image;
  String name;
  String desc;
  String price;

  Plant({
    required this.id,
    required this.image,
    required this.name,
    required this.desc,
    required this.price,
  });
}

List<Plant> tanaman = [
  Plant(
    id: 1,
    image: 'assets/image1.png',
    name: 'Bonsai',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent semper elit vel commodo placerat. Proin blandit non augue mollis hendrerit. Nulla est dui, lobortis vulputate vestibulum vel, congue et ipsum. Vivamus ac lectus posuere tellus posuere rutrum non non purus. Maecenas tempus nunc et turpis mollis, nec luctus nibh ornare.',
    price: '60',
  ),
  Plant(
    id: 2,
    image: 'assets/image2.png',
    name: 'Spectrum',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent semper elit vel commodo placerat. Proin blandit non augue mollis hendrerit. Nulla est dui, lobortis vulputate vestibulum vel, congue et ipsum. Vivamus ac lectus posuere tellus posuere rutrum non non purus. Maecenas tempus nunc et turpis mollis, nec luctus nibh ornare.',
    price: '60',
  ),
  Plant(
    id: 3,
    image: 'assets/image3.png',
    name: 'Office',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent semper elit vel commodo placerat. Proin blandit non augue mollis hendrerit. Nulla est dui, lobortis vulputate vestibulum vel, congue et ipsum. Vivamus ac lectus posuere tellus posuere rutrum non non purus. Maecenas tempus nunc et turpis mollis, nec luctus nibh ornare.',
    price: '60',
  ),
  Plant(
    id: 4,
    image: 'assets/image4.png',
    name: 'Garden',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent semper elit vel commodo placerat. Proin blandit non augue mollis hendrerit. Nulla est dui, lobortis vulputate vestibulum vel, congue et ipsum. Vivamus ac lectus posuere tellus posuere rutrum non non purus. Maecenas tempus nunc et turpis mollis, nec luctus nibh ornare.',
    price: '60',
  ),
];
