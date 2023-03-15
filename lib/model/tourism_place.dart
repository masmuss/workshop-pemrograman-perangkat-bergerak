class TourismPlace {
  String name, location, imageAsset, openOn, openAt, price, detail;
  List gallery;

  TourismPlace({required this.name,
      required this.location,
      required this.imageAsset,
      required this.openOn,
      required this.openAt,
      required this.price,
      required this.detail,
      required this.gallery
  });
}

var tourismPlaceLists = [
  TourismPlace(
    name: 'Museum Kapal Selam',
    location: 'Surabaya',
    imageAsset: 'assets/images/kapal.jpg',
    openOn: 'everyday',
    openAt: '09.00 - 17.00',
    price: '15.000',
    detail: 'Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota yaitu di Jalan Pemuda, tepat di sebelah Plaza Surabaya, dan terdapat pintu akses untuk mengakses mal dari dalam monumen.',
    gallery: [
      'assets/images/kapal2.jpg',
      'assets/images/kapal3.jpg',
      'assets/images/kapal4.jpg',
    ],
  ),
  TourismPlace(
    name: 'Museum Angkut',
    location: 'Malang',
    imageAsset: 'assets/images/angkut1.jpg',
    openOn: 'everyday',
    openAt: '09.00 - 17.00',
    price: '15.000',
    detail: 'Museum Angkut merupakan museum transportasi dan tempat wisata modern yang terletak di Kota Batu, Jawa Timur, sekitar 20 km dari Kota Malang. Museum ini terletak di kawasan seluas 3,8 hektar di lereng Gunung Panderman dan memiliki lebih dari 300 koleksi jenis angkutan tradisional hingga modern',
    gallery: [
      'assets/images/angkut2.jpg',
      'assets/images/angkut3.jpg',
      'assets/images/angkut4.jpeg',
    ],
  ),
];
