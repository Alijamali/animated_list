class ListItem {
  final String title;
  final String urlImage;

  const ListItem({required this.title, required this.urlImage});
}

//add example data for show in list
final List<ListItem> listItems = [
  const ListItem(
      title: 'mango',
      urlImage:
          'https://hips.hearstapps.com/hmg-prod/images/mango-fruit-sugar-1530136260.jpg'),
  const ListItem(
      title: 'orange',
      urlImage:
          'https://media.istockphoto.com/id/185284489/photo/orange.jpg?s=612x612&w=0&k=20&c=m4EXknC74i2aYWCbjxbzZ6EtRaJkdSJNtekh4m1PspE='),
  const ListItem(
      title: 'red-apple',
      urlImage:
          'https://media.istockphoto.com/id/184276818/photo/red-apple.jpg?s=612x612&w=0&k=20&c=NvO-bLsG0DJ_7Ii8SSVoKLurzjmV0Qi4eGfn6nW3l5w='),
  const ListItem(
      title: 'pain-apple',
      urlImage:
          'https://images.unsplash.com/photo-1550258987-190a2d41a8ba?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D'),
  const ListItem(
      title: 'Strawberry',
      urlImage:
          'https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D'),
  const ListItem(
      title: 'dragon-fruit',
      urlImage:
          'https://www.melissas.com/cdn/shop/products/3-count-image-of-dragon-fruit-red-fruit-33579304157228_512x512.jpg?v=1679408764'),
];
