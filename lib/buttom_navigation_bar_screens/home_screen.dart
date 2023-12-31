import 'package:app_zone/Splash/content_model.dart';
import 'package:app_zone/special_offers/view/screens/special_offers_screen.dart';
import 'package:app_zone/special_offers/view/widgets/special_offers_item.dart';
import 'package:app_zone/widgets/cat_item.dart';
import 'package:app_zone/widgets/main_cat_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deliverd To',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      height: 5 ,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xFFB31312),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Marj-Alhamam ,Amman",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFFB31312),
                        ),
                      ],
                    ),
                  ],
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child:  const Icon(
                      Icons.notifications,
                      //color: Color(0xFFB31312),
                    ),
                  ),
                )
              ],
            ),
            ),

            const SizedBox(
              height: 16,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Search your food here...",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.filter_list,
                      color: Color(0xFFB31312),
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  CatItem(
                      icon: 'assets/images/main_dishes_ic.png',
                      title: 'Main Dishes',
                      onTap: (){
                        print('Main Dishes');
                      },
                  ),
                  const SizedBox(width: 12),
                  CatItem(
                    icon: 'assets/images/fast-food.png',
                    title: 'Fast Food',
                    onTap: (){
                      print('Fast Food');
                    },
                  ),
                  const SizedBox(width: 12),
                  CatItem(
                    icon: 'assets/images/drinks.png',
                    title: 'Drinks',
                    onTap: (){
                      print('drinks');
                    },
                  ),
                  const SizedBox(width: 12),
                  CatItem(
                    icon: 'assets/images/Dessert.png',
                    title: 'Dessert',
                    onTap: (){
                      print('Dessert');
                    },
                  ),
                  const SizedBox(width: 12),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SpecialOffersItem(
              imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU',
              per: 50,
              des: 'Special Offers',
              colors: const [Color(0xff000000), Color(0xFFFF2F08)],
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context){
                      return const SpecialScreen();
                      },
                    )
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            MainCatSection(
                mainCatTitle: homeTopRatedDate['cat_title'],
                onTapSeeAll: (){
                  print('see all ${homeTopRatedDate['cat_title']}');
                },
                itemsList: homeTopRatedDate['items']
            ),
            const SizedBox(
              height: 16,
            ),
            MainCatSection(
                mainCatTitle: homeNearToYouData['cat_title'],
                onTapSeeAll: (){
                  print('see all ${homeNearToYouData['cat_title']}');
                },
                itemsList: homeNearToYouData['items']
            ),
          ],
        ),
      ),
    );
  }
}
Map<String, dynamic> homeTopRatedDate={
  'cat_id': 1,
  'cat_title': 'Top rated',
  'items' : [
    {
      'id': 1,
      'title':'Lorem ipsum dolor 1',
      'itemPrice': '20 JOD',
      'image_url': 'https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvcGYtczg3LW1uLTI1LTAxLnBuZw.png?s=oKp6HzXr641NDT5CYgD0K_kDgZAvDOdSPYweV18ihGo'
    },
    {
      'id': 2,
      'title':'Lorem ipsum dolor 2',
      'itemPrice': '15 JOD',
      'image_url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRftZVukcnrPxwBMP-DkDxZ6_B6E_P08GKn3Q&usqp=CAU'
    },
    {
      'id': 3,
      'title':'Pepsi',
      'itemPrice': '0.50 JOD',
      'image_url': 'https://w7.pngwing.com/pngs/153/255/png-transparent-pepsi-max-fizzy-drinks-pepsi-blue-sprite-pepsi-cola-electric-blue-pepsico.png'
    },
    {
      'id': 4,
      'title':'Lorem ipsum dolor 4',
      'itemPrice': '5 JOD',
      'image_url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU'
    }
  ]
};
Map<String, dynamic> homeNearToYouData = {
  'cat_id': 2,
  'cat_title': 'Popular',
  'items' : [
    {
      'id': 1,
      'title':'Classic Chicken Burger',
      'itemPrice': '20 JOD',
      'image_url': 'https://www.pngplay.com/wp-content/uploads/15/Classic-Chicken-Burger-Transparent-Images.png'
    },
    {
      'id': 2,
      'title':'Fish Burger',
      'itemPrice': '15 JOD',
      'image_url': 'https://w7.pngwing.com/pngs/889/296/png-transparent-veggie-burger-hamburger-fast-food-breakfast-sandwich-hot-dog-fish-burger-thumbnail.png'
    },
    {
      'id': 3,
      'title':'Cheese burger',
      'itemPrice': '10 JOD',
      'image_url': 'https://p1.hiclipart.com/preview/249/784/968/burger-cheese-burger-png-clipart.jpg'
    },
    {
      'id': 4,
      'title':'Big Burger',
      'itemPrice': '5 JOD',
      'image_url': 'https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1a8.png'
    }
  ]
};
