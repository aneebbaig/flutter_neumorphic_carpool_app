import 'package:car_pool/consts/colors.dart';
import 'package:car_pool/provider/media_query.dart';
import 'package:car_pool/widgets/my_title_row.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  static const pathName = '/dashboard';
  final List _gridList = [
    {
      'name': 'Ali',
      'image':
          'https://static01.nyt.com/images/2013/09/22/magazine/22wmt/22wmt-articleLarge-v2.jpg?quality=75&auto=webp&disable=upscale',
      'car': 'Honda City'
    },
    {
      'name': 'Baloch',
      'image':
          'https://static01.nyt.com/images/2013/09/22/magazine/22wmt/22wmt-articleLarge-v2.jpg?quality=75&auto=webp&disable=upscale',
      'car': 'Toyota Corolla'
    },
    {
      'name': 'Sameer',
      'image':
          'https://static01.nyt.com/images/2013/09/22/magazine/22wmt/22wmt-articleLarge-v2.jpg?quality=75&auto=webp&disable=upscale',
      'car': 'Suuki Swift',
    }
  ];

  @override
  Widget build(BuildContext context) {
    final defStyle = Theme.of(context).textTheme;
    final mq = Provider.of<MyMediaQuery>(context);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black54,
        ),
        backgroundColor: bgColor,
        elevation: 0,
        title: Text(
          'Dashboard',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: bgColor,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Name"),
              accountEmail: const Text('mail@email.com'),
              currentAccountPicture: const FlutterLogo(),
              decoration: BoxDecoration(color: primaryColor),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: mq.getHeight(context) * 0.02,
            ),
            const Text('Your Rides'),
            SizedBox(
              height: mq.getHeight(context) * 0.02,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: mq.getWidth(context) * 0.03,
                  right: mq.getWidth(context) * 0.03,
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (_, i) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          clipBehavior: Clip.hardEdge,
                          child: Container(
                            clipBehavior: Clip.none,
                            decoration: BoxDecoration(
                              boxShadow: boxShadowColors,
                              color: bgColor,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: GridTile(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        _gridList[i]['image'],
                                        loadingBuilder: (BuildContext context,
                                            Widget child,
                                            ImageChunkEvent? loadingProgress) {
                                          if (loadingProgress == null) {
                                            return child;
                                          }
                                          return Center(
                                            child: CircularProgressIndicator(
                                              value: loadingProgress
                                                          .expectedTotalBytes !=
                                                      null
                                                  ? loadingProgress
                                                          .cumulativeBytesLoaded /
                                                      loadingProgress
                                                          .expectedTotalBytes!
                                                  : null,
                                            ),
                                          );
                                        },
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        TitleRow(
                          defStyle: defStyle,
                          icon: Icons.person,
                          title: _gridList[i]['name'],
                        ),
                        TitleRow(
                          title: _gridList[i]['car'],
                          defStyle: defStyle,
                          icon: Icons.car_rental,
                        ),
                      ],
                    );
                  },
                  itemCount: _gridList.length,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Add Ride"),
                    style: TextButton.styleFrom(
                      backgroundColor: buttonColor1,
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Request Ride"),
                    style: TextButton.styleFrom(
                      backgroundColor: buttonColor2,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}