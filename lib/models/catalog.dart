class CatalogModel {
  static final items = [
    Item(
      id:1, 
      name:"Iphone 12 pro", 
      desc:"an apple phone", 
      price:46, 
      color:"#33505a", 
      image:"https://images.unsplash.com/photo-1537589376225-5405c60a5bd8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80",
    )
  ];
}


class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

