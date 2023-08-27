import 'package:app_zone/special_offers/controller/special_offers_controller.dart';
import 'package:app_zone/special_offers/view/widgets/special_offers_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SpecialScreen extends StatefulWidget {
  const SpecialScreen({super.key});

  @override
  State<SpecialScreen> createState() => _SpecialScreenState();
}

class _SpecialScreenState extends State<SpecialScreen> {

  @override
  void initState(){
    super.initState();
    Provider.of<SpecialOffersController>(context, listen:false).getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            'Special Offers',
            style: TextStyle(
                color: Colors.black
            ),
          ),
          elevation: 0,
          iconTheme: const IconThemeData(color: Color(0xFF9B1A19)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Consumer<SpecialOffersController>(
          builder: (BuildContext context, provider, Widget? child) {
            if (provider.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            return ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: provider.specialOffersDataList?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                return SpecialOffersItem(
                  imageURL:
                  provider.specialOffersDataList?[index].imageURL,
                  per: provider.specialOffersDataList?[index].per,
                  des: provider.specialOffersDataList?[index].des,
                  colors: [const Color(0xff000000), const Color(0xFFB31312)],
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const SpecialScreen();
                        }));
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 16,
                );
              },
            );
          },
        ));
  }
}