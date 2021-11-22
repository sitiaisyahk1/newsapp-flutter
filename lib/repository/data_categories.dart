import 'package:newsapp/model/category.dart';

List<Category> getCategories() {
  List<Category> categories = [
    Category(
        categoryName: 'Business',
        imgUrl: 'https://images.unsplash.com/photo-1549921296-bc643ead1e65?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80'),
    Category(
        categoryName: 'Entertainment',
        imgUrl: 'https://images.unsplash.com/photo-1586899028174-e7098604235b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1171&q=80'),
    Category(
        categoryName: 'General',
        imgUrl: "https://images.unsplash.com/photo-1483058712412-4245e9b90334?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80"),
    Category(
        categoryName: 'Health',
        imgUrl: 'https://images.unsplash.com/photo-1505576399279-565b52d4ac71?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80'),
    Category(
        categoryName: 'Science',
        imgUrl: 'https://images.unsplash.com/photo-1517976487492-5750f3195933?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80'),
    Category(
        categoryName: 'Sports',
        imgUrl: 'https://images.unsplash.com/photo-1587280501635-68a0e82cd5ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80'),
    Category(
        categoryName: 'Technology',
        imgUrl: 'https://images.unsplash.com/photo-1633114130148-3f40987134d2?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80'),
  ];
  return categories;
}