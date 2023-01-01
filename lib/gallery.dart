import 'package:flutter/material.dart';
import 'package:southdowns/components/fabmenu.dart';

class PhotoItem {
  final String image;
  PhotoItem(this.image);
}

class Gallery extends StatelessWidget {
  final List<PhotoItem> _items = [
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2021/04/Book-with-confidence3_1-555x555.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2018/12/Holding.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2019/11/Alyson-Simon-088.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2020/04/NC-0292.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2020/06/Southdowns-Manor-Summer-Wedding-Jodie-Mike-Nisha-Haq-Photography_0077_websize.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2019/01/SR204359-SouthdownsManor-food-wedding-photography-by-Sainte-Croix-Photography.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2020/04/Sneak-Peek-Natasha-and-Josh-Wedding-20.03.2020-7-1.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2019/11/592C-Laura-David-Wedding-at-Southdowns-Manor-West-Sussex-by-Adam-de-Ste-Croix-of-Sainte-Croix-photography-A7RII_DSC02318-Edit-Edit_LR.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2019/11/404.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2020/05/460.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2019/01/DSC_0241.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2019/11/8.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2018/12/Getting-married-near-London-1.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2020/04/Paige-and-Daniel-Wedding-06.07.2019-2815.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2019/01/DSC_0263.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2019/01/south-downs-manor-hotel-wedding-venue-john-flowerdew-photographer-2.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2019/11/ES-1218.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2020/06/Southdowns-Manor-Outdoor-Summer-Wedding-Daisy-Daniel-Nisha-Haq-Photography_0021_websize.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2020/06/Southdowns-Manor-Summer-Wedding-Jodie-Mike-Nisha-Haq-Photography_0006_websize.jpg"),
    PhotoItem(
        "https://www.southdownsmanor.co.uk/wp-content/uploads/2020/04/Kancana-and-Joshua-Wedding-04.07.2019-916.jpg"),
  ];

  Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 2,
        ),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(_items[index].image),
              ),
            ),
          );
        },
      ),
      floatingActionButton: const FabMenu(),
    );
  }
}
