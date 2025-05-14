class Hotel {
  final String name;
  final String location;
  final String distance;
  final double price;
  final double rating;
  final int reviews;
  final String imageUrl;

  Hotel({
    required this.name,
    required this.location,
    required this.distance,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.imageUrl,
  });

  static List<Hotel> hotels = [
    Hotel(
      name: 'Grand Royal Hotel',
      location: 'Wembley, London',
      distance: '2 km to city',
      price: 180,
      rating: 4.5,
      reviews: 80,
      imageUrl: 'assets/hotel/hotel_1.png',
    ),
    Hotel(
      name: 'Grand Royal Hotel',
      location: 'Wembley, London',
      distance: '2 km to city',
      price: 180,
      rating: 4.5,
      reviews: 80,
      imageUrl: 'assets/hotel/hotel_2.png',
    ),
    Hotel(
      name: 'Grand Royal Hotel',
      location: 'Wembley, London',
      distance: '2 km to city',
      price: 180,
      rating: 4.5,
      reviews: 80,
      imageUrl: 'assets/hotel/hotel_3.png',
    ),
    Hotel(
      name: 'Grand Royal Hotel',
      location: 'Wembley, London',
      distance: '2 km to city',
      price: 180,
      rating: 4.5,
      reviews: 80,
      imageUrl: 'assets/hotel/hotel_4.png',
    ),
    Hotel(
      name: 'Grand Royal Hotel',
      location: 'Wembley, London',
      distance: '2 km to city',
      price: 180,
      rating: 4.5,
      reviews: 80,
      imageUrl: 'assets/hotel/hotel_5.png',
    ),
  ];
}
